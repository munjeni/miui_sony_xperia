.class public Lcom/example/android/fmradioreceiver/FmRadioReceiver;
.super Landroid/app/Activity;
.source "FmRadioReceiver.java"


# instance fields
.field private mFmBand:Lcom/stericsson/hardware/fm/FmBand;

.field private mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

.field private mFrequencyTextView:Landroid/widget/TextView;

.field private mInit:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMenuAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseMutex:Z

.field private mReceiverRdsDataFoundListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

.field private mReceiverScanListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

.field private mReceiverStartedListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

.field private mRestart:Z

.field private mSelectedBand:I

.field private mStationNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mInit:Z

    .line 88
    iput-boolean v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mRestart:Z

    .line 92
    iput-boolean v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z

    return-void
.end method

.method static synthetic access$000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmBand;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    return-object v0
.end method

.method static synthetic access$300(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mInit:Z

    return v0
.end method

.method static synthetic access$302(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mInit:Z

    return p1
.end method

.method static synthetic access$400(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Lcom/stericsson/hardware/fm/FmReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFrequencyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mStationNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->initialBandscan()V

    return-void
.end method

.method static synthetic access$800(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->startAudio()V

    return-void
.end method

.method static synthetic access$900(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z

    return v0
.end method

.method static synthetic access$902(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mPauseMutex:Z

    return p1
.end method

.method private initialBandscan()V
    .locals 1

    .prologue
    .line 267
    new-instance v0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$4;

    invoke-direct {v0, p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$4;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V

    .line 277
    .local v0, bandscanThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 278
    return-void
.end method

.method private setupButtons()V
    .locals 6

    .prologue
    .line 331
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p0, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    .line 332
    iget-object v4, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    const v5, 0x109000f

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 333
    iget-object v4, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    const-string v5, "No stations available"

    invoke-virtual {v4, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 334
    const v4, 0x7f050002

    invoke-virtual {p0, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFrequencyTextView:Landroid/widget/TextView;

    .line 335
    const v4, 0x7f050001

    invoke-virtual {p0, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mStationNameTextView:Landroid/widget/TextView;

    .line 337
    const v4, 0x7f050005

    invoke-virtual {p0, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 338
    .local v3, scanUp:Landroid/widget/Button;
    new-instance v4, Lcom/example/android/fmradioreceiver/FmRadioReceiver$6;

    invoke-direct {v4, p0, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$6;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Landroid/widget/Button;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 350
    const v4, 0x7f050004

    invoke-virtual {p0, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 351
    .local v2, scanDown:Landroid/widget/Button;
    new-instance v4, Lcom/example/android/fmradioreceiver/FmRadioReceiver$7;

    invoke-direct {v4, p0, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$7;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Landroid/widget/Button;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    const v4, 0x7f050008

    invoke-virtual {p0, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 364
    .local v1, pause:Landroid/widget/Button;
    new-instance v4, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;

    invoke-direct {v4, p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$8;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Landroid/widget/Button;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    const v4, 0x7f050007

    invoke-virtual {p0, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 400
    .local v0, fullScan:Landroid/widget/Button;
    new-instance v4, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;

    invoke-direct {v4, p0, v0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$9;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Landroid/widget/Button;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    return-void
.end method

.method private showToast(Ljava/lang/String;I)V
    .locals 1
    .parameter "text"
    .parameter "duration"

    .prologue
    .line 284
    new-instance v0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$5;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 289
    return-void
.end method

.method private startAudio()V
    .locals 3

    .prologue
    .line 316
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 318
    :try_start_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    const-string v2, "fmradio://rx"

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 320
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :goto_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Unable to start the media player"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private turnRadioOn()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 297
    :try_start_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    invoke-virtual {v1, v2}, Lcom/stericsson/hardware/fm/FmReceiver;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    .line 299
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 300
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    const v1, 0x7f050008

    invoke-virtual {p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    const v1, 0x7f050007

    invoke-virtual {p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 303
    const-string v1, "Scanning initial stations"

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :goto_0
    return-void

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Unable to start the radio receiver."

    invoke-direct {p0, v1, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto :goto_0

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 307
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Unable to start the radio receiver."

    invoke-direct {p0, v1, v3}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public getSelectStationMenuItem(Landroid/view/MenuItem;)I
    .locals 1
    .parameter "item"

    .prologue
    .line 452
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    add-int/lit8 v0, v0, -0x7

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 126
    const/high16 v1, 0x7f03

    invoke-virtual {p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->setContentView(I)V

    .line 127
    const-string v1, "fm_receiver"

    invoke-virtual {p0, v1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/stericsson/hardware/fm/FmReceiver;

    iput-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    .line 128
    const-string v1, "FMRadioPrefsFile"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 129
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v1, "selectedBand"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    .line 130
    new-instance v1, Lcom/stericsson/hardware/fm/FmBand;

    iget v2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    invoke-direct {v1, v2}, Lcom/stericsson/hardware/fm/FmBand;-><init>(I)V

    iput-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 131
    invoke-direct {p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->setupButtons()V

    .line 132
    return-void
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 247
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 248
    const-string v3, "FMRadioPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 249
    .local v2, settings:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 250
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "selectedBand"

    iget v4, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 251
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 253
    :try_start_0
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v3}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 259
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 261
    :cond_0
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Ljava/io/IOException;
    const-string v3, "FM Radio Demo App"

    const-string v4, "Unable to reset correctly"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 461
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 516
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 463
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 483
    :goto_1
    new-instance v1, Lcom/stericsson/hardware/fm/FmBand;

    iget v2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    invoke-direct {v1, v2}, Lcom/stericsson/hardware/fm/FmBand;-><init>(I)V

    iput-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmBand:Lcom/stericsson/hardware/fm/FmBand;

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    invoke-virtual {v1}, Lcom/stericsson/hardware/fm/FmReceiver;->reset()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :goto_2
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 491
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 493
    :cond_1
    invoke-direct {p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->turnRadioOn()V

    goto :goto_0

    .line 465
    :pswitch_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    .line 466
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 469
    :pswitch_2
    iput v7, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    .line 470
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 473
    :pswitch_3
    const/4 v1, 0x2

    iput v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    .line 474
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 477
    :pswitch_4
    const/4 v1, 0x3

    iput v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    .line 478
    invoke-interface {p1, v7}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 486
    :catch_0
    move-exception v0

    .line 487
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Unable to restart the FM Radio"

    invoke-direct {p0, v1, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto :goto_2

    .line 497
    .end local v0           #e:Ljava/io/IOException;
    :pswitch_5
    :try_start_1
    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getSelectStationMenuItem(Landroid/view/MenuItem;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No stations available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget-object v2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getSelectStationMenuItem(Landroid/view/MenuItem;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L

    mul-double/2addr v3, v5

    double-to-int v1, v3

    invoke-virtual {v2, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->setFrequency(I)V

    .line 501
    iget-object v2, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFrequencyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0, p1}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->getSelectStationMenuItem(Landroid/view/MenuItem;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 504
    :catch_1
    move-exception v0

    .line 505
    .restart local v0       #e:Ljava/io/IOException;
    const-string v1, "Unable to set the frequency"

    invoke-direct {p0, v1, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 506
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 507
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "Unable to set the frequency"

    invoke-direct {p0, v1, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 508
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v0

    .line 509
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v1, "Unable to set the frequency"

    invoke-direct {p0, v1, v7}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->showToast(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 463
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 419
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 420
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    .line 421
    .local v1, result:Z
    const v3, 0x7f040001

    invoke-interface {p1, v6, v5, v6, v3}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 423
    .local v2, subMenu:Landroid/view/SubMenu;
    const v3, 0x1080043

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 425
    const v3, 0x7f040002

    invoke-interface {v2, v5, v7, v6, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 426
    const/4 v3, 0x3

    const v4, 0x7f040003

    invoke-interface {v2, v5, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 427
    const/4 v3, 0x4

    const v4, 0x7f040004

    invoke-interface {v2, v5, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 428
    const/4 v3, 0x5

    const v4, 0x7f040005

    invoke-interface {v2, v5, v3, v6, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 429
    invoke-interface {v2, v5, v5, v5}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    .line 430
    iget v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mSelectedBand:I

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 432
    const/4 v3, 0x6

    const v4, 0x7f040006

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v2

    .line 434
    const v3, 0x1080034

    invoke-interface {v2, v3}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    .line 438
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    invoke-interface {v2, v7, v6}, Landroid/view/SubMenu;->setGroupEnabled(IZ)V

    .line 448
    :goto_0
    return v1

    .line 441
    :cond_0
    invoke-interface {v2, v7, v5}, Landroid/view/SubMenu;->setGroupEnabled(IZ)V

    .line 442
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 443
    add-int/lit8 v4, v0, 0x7

    iget-object v3, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mMenuAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v7, v4, v6, v3}, Landroid/view/SubMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 442
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 446
    :cond_1
    invoke-interface {v2, v7, v5, v5}, Landroid/view/SubMenu;->setGroupCheckable(IZZ)V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mRestart:Z

    .line 225
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 140
    new-instance v0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;

    invoke-direct {v0, p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$1;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V

    iput-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverScanListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    .line 185
    new-instance v0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$2;

    invoke-direct {v0, p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$2;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V

    iput-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverRdsDataFoundListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    .line 195
    new-instance v0, Lcom/example/android/fmradioreceiver/FmRadioReceiver$3;

    invoke-direct {v0, p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver$3;-><init>(Lcom/example/android/fmradioreceiver/FmRadioReceiver;)V

    iput-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverStartedListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    .line 208
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverScanListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 209
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverRdsDataFoundListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 210
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverStartedListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 212
    iget-boolean v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mRestart:Z

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->turnRadioOn()V

    .line 215
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mRestart:Z

    .line 216
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 234
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverScanListener:Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V

    .line 236
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverRdsDataFoundListener:Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V

    .line 237
    iget-object v0, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mFmReceiver:Lcom/stericsson/hardware/fm/FmReceiver;

    iget-object v1, p0, Lcom/example/android/fmradioreceiver/FmRadioReceiver;->mReceiverStartedListener:Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;

    invoke-virtual {v0, v1}, Lcom/stericsson/hardware/fm/FmReceiver;->removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V

    .line 239
    :cond_0
    return-void
.end method
