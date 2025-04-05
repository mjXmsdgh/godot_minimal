extends AudioStreamPlayer2D

# サンプリングレートと周波数を定義
const SAMPLE_RATE = 44100
const FREQUENCY = 440.0

# 再生時間を秒単位で定義
const DURATION = 2.0

func _ready():
	# バッファサイズを計算
	var buffer_size = int(SAMPLE_RATE * DURATION)
	
	# オーディオストリームを作成
	var audio_stream = AudioStreamGenerator.new()
	audio_stream.mix_rate = SAMPLE_RATE
	
	# AudioStreamPlayer2Dにストリームを設定
	self.stream = audio_stream
	
	# 再生
	self.play()
	
	# 1フレーム待機
	await get_tree().process_frame
	
	# オーディオストリーム生成プレイバックを作成
	var playback = self.get_stream_playback() as AudioStreamGeneratorPlayback
	
	# 正弦波データを生成
	for i in range(buffer_size):
		var sample_value = sin(2.0 * PI * FREQUENCY * i / SAMPLE_RATE)
		playback.push_frame(Vector2(sample_value, sample_value))
