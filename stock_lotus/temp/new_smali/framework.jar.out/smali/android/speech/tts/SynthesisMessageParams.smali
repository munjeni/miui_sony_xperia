.class final Landroid/speech/tts/SynthesisMessageParams;
.super Landroid/speech/tts/MessageParams;
.source "SynthesisMessageParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/SynthesisMessageParams$ListEntry;
    }
.end annotation


# static fields
.field private static final MAX_UNCONSUMED_AUDIO_MS:J = 0x1f4L


# instance fields
.field mAudioBufferSize:I

.field final mAudioFormat:I

.field volatile mAudioTrack:Landroid/media/AudioTrack;

.field final mBytesPerFrame:I

.field volatile mBytesWritten:I

.field final mChannelCount:I

.field private final mDataBufferList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/speech/tts/SynthesisMessageParams$ListEntry;",
            ">;"
        }
    .end annotation
.end field

.field volatile mIsError:Z

.field mIsShortUtterance:Z

.field final mLogger:Landroid/speech/tts/EventLogger;

.field final mPan:F

.field final mSampleRateInHz:I

.field final mStreamType:I

.field mUnconsumedBytes:I

.field final mVolume:F


# direct methods
.method constructor <init>(IIIIFFLandroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;Landroid/speech/tts/EventLogger;)V
    .locals 3
    .parameter "streamType"
    .parameter "sampleRate"
    .parameter "audioFormat"
    .parameter "channelCount"
    .parameter "volume"
    .parameter "pan"
    .parameter "dispatcher"
    .parameter "callingApp"
    .parameter "logger"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p7, p8}, Landroid/speech/tts/MessageParams;-><init>(Landroid/speech/tts/TextToSpeechService$UtteranceProgressDispatcher;Ljava/lang/String;)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mDataBufferList:Ljava/util/LinkedList;

    iput p1, p0, Landroid/speech/tts/SynthesisMessageParams;->mStreamType:I

    iput p2, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    iput p3, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioFormat:I

    iput p4, p0, Landroid/speech/tts/SynthesisMessageParams;->mChannelCount:I

    iput p5, p0, Landroid/speech/tts/SynthesisMessageParams;->mVolume:F

    iput p6, p0, Landroid/speech/tts/SynthesisMessageParams;->mPan:F

    iput-object p9, p0, Landroid/speech/tts/SynthesisMessageParams;->mLogger:Landroid/speech/tts/EventLogger;

    iget v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioFormat:I

    invoke-static {v0}, Landroid/speech/tts/SynthesisMessageParams;->getBytesPerFrame(I)I

    move-result v0

    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mChannelCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    iput v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesWritten:I

    iput v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioBufferSize:I

    iput-boolean v2, p0, Landroid/speech/tts/SynthesisMessageParams;->mIsError:Z

    return-void
.end method

.method private static getBytesPerFrame(I)I
    .locals 2
    .parameter "audioFormat"

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eq p0, v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getUnconsumedAudioLengthMs()J
    .locals 5

    .prologue
    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mUnconsumedBytes:I

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mBytesPerFrame:I

    div-int v2, v3, v4

    .local v2, unconsumedFrames:I
    mul-int/lit16 v3, v2, 0x3e8

    iget v4, p0, Landroid/speech/tts/SynthesisMessageParams;->mSampleRateInHz:I

    div-int/2addr v3, v4

    int-to-long v0, v3

    .local v0, estimatedTimeMs:J
    return-wide v0
.end method


# virtual methods
.method declared-synchronized addBuffer([B)V
    .locals 5
    .parameter "buffer"

    .prologue
    monitor-enter p0

    const-wide/16 v1, 0x0

    .local v1, unconsumedAudioMs:J
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/speech/tts/SynthesisMessageParams;->getUnconsumedAudioLengthMs()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mDataBufferList:Ljava/util/LinkedList;

    new-instance v4, Landroid/speech/tts/SynthesisMessageParams$ListEntry;

    invoke-direct {v4, p1}, Landroid/speech/tts/SynthesisMessageParams$ListEntry;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mUnconsumedBytes:I

    array-length v4, p1

    add-int/2addr v3, v4

    iput v3, p0, Landroid/speech/tts/SynthesisMessageParams;->mUnconsumedBytes:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method declared-synchronized clearBuffers()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mUnconsumedBytes:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getAudioTrack()Landroid/media/AudioTrack;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    return-object v0
.end method

.method declared-synchronized getNextBuffer()Landroid/speech/tts/SynthesisMessageParams$ListEntry;
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mDataBufferList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/speech/tts/SynthesisMessageParams$ListEntry;

    .local v0, entry:Landroid/speech/tts/SynthesisMessageParams$ListEntry;
    if-eqz v0, :cond_0

    iget v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mUnconsumedBytes:I

    iget-object v2, v0, Landroid/speech/tts/SynthesisMessageParams$ListEntry;->mBytes:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/speech/tts/SynthesisMessageParams;->mUnconsumedBytes:I

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    .end local v0           #entry:Landroid/speech/tts/SynthesisMessageParams$ListEntry;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method getType()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method isError()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/speech/tts/SynthesisMessageParams;->mIsError:Z

    return v0
.end method

.method setAudioTrack(Landroid/media/AudioTrack;)V
    .locals 0
    .parameter "audioTrack"

    .prologue
    iput-object p1, p0, Landroid/speech/tts/SynthesisMessageParams;->mAudioTrack:Landroid/media/AudioTrack;

    return-void
.end method

.method setIsError(Z)V
    .locals 0
    .parameter "isError"

    .prologue
    iput-boolean p1, p0, Landroid/speech/tts/SynthesisMessageParams;->mIsError:Z

    return-void
.end method
