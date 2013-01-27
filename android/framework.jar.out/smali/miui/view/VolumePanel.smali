.class public Lmiui/view/VolumePanel;
.super Landroid/os/Handler;
.source "VolumePanel.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/view/VolumePanel$VolumeChangeInfo;,
        Lmiui/view/VolumePanel$StreamControl;,
        Lmiui/view/VolumePanel$StreamResources;
    }
.end annotation


# static fields
.field private static final BEEP_DURATION:I = 0x96

.field private static final FREE_DELAY:I = 0x2710

.field private static LOGD:Z = false

.field private static final MAX_VOLUME:I = 0x64

.field private static final MSG_FREE_RESOURCES:I = 0x1

.field private static final MSG_PLAY_SOUND:I = 0x2

.field private static final MSG_RINGER_MODE_CHANGED:I = 0x6

.field private static final MSG_STOP_SOUNDS:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x5

.field private static final MSG_VIBRATE:I = 0x4

.field private static final MSG_VOLUME_CHANGED:I = 0x0

.field public static final PLAY_SOUND_DELAY:I = 0x12c

.field private static final STREAMS:[Lmiui/view/VolumePanel$StreamResources; = null

.field private static final TAG:Ljava/lang/String; = "VolumePanel"

.field private static final TIMEOUT_DELAY:I = 0x3e8

.field public static final VIBRATE_DELAY:I = 0x12c

.field private static final VIBRATE_DURATION:I = 0x12c


# instance fields
.field private mActiveStreamType:I

.field private mAudioManager:Landroid/media/AudioManager;

.field protected mAudioService:Landroid/media/AudioService;

.field protected mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private mDivider:Landroid/view/View;

.field mLastAudibleRingVolume:I

.field private mMoreButton:Landroid/view/View;

.field private mPanel:Landroid/view/ViewGroup;

.field mRestoreRingVolume:I

.field private mRingIsSilent:Z

.field private mShowCombinedVolumes:Z

.field private mSliderGroup:Landroid/view/ViewGroup;

.field private mStreamControls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lmiui/view/VolumePanel$StreamControl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemeChanged:I

.field private mToneGenerators:[Landroid/media/ToneGenerator;

.field private mVibrator:Landroid/os/Vibrator;

.field private mView:Landroid/view/View;

.field private mVoiceCapable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    sput-boolean v2, Lmiui/view/VolumePanel;->LOGD:Z

    .line 175
    const/4 v0, 0x6

    new-array v0, v0, [Lmiui/view/VolumePanel$StreamResources;

    sget-object v1, Lmiui/view/VolumePanel$StreamResources;->BluetoothSCOStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->VoiceStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->MediaStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lmiui/view/VolumePanel$StreamResources;->AlarmStream:Lmiui/view/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioService;)V
    .locals 2
    .parameter "context"
    .parameter "volumeService"

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 198
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 207
    iput v0, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 747
    iput v1, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 748
    iput v1, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 199
    iput-object p1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    .line 200
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    .line 201
    iput-object p2, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    .line 203
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 204
    invoke-direct {p0}, Lmiui/view/VolumePanel;->listenToRingerMode()V

    .line 205
    return-void
.end method

.method static synthetic access$000(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    return-void
.end method

.method static synthetic access$100(Lmiui/view/VolumePanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lmiui/view/VolumePanel;->forceTimeout()V

    return-void
.end method

.method static synthetic access$200(Lmiui/view/VolumePanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return v0
.end method

.method static synthetic access$202(Lmiui/view/VolumePanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    return p1
.end method

.method static synthetic access$300(Lmiui/view/VolumePanel;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private addOtherVolumes()V
    .locals 5

    .prologue
    .line 355
    iget-boolean v3, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v3, :cond_1

    .line 367
    :cond_0
    return-void

    .line 357
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 359
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget v2, v3, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 360
    .local v2, streamType:I
    sget-object v3, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lmiui/view/VolumePanel$StreamResources;->show:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-ne v2, v3, :cond_3

    .line 357
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 363
    :cond_3
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .line 364
    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v4, v1, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 365
    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->updateSlider(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_1
.end method

.method private collapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 395
    iget-object v2, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 396
    iget-object v2, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 397
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 398
    .local v0, count:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 399
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 398
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 401
    :cond_0
    return-void
.end method

.method private createSliders()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 307
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 309
    .local v1, inflater:Landroid/view/LayoutInflater;
    new-instance v7, Ljava/util/HashMap;

    sget-object v8, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v8, v8

    invoke-direct {v7, v8}, Ljava/util/HashMap;-><init>(I)V

    iput-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 310
    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 311
    .local v3, res:Landroid/content/res/Resources;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v7, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    array-length v7, v7

    if-ge v0, v7, :cond_3

    .line 312
    sget-object v7, Lmiui/view/VolumePanel;->STREAMS:[Lmiui/view/VolumePanel$StreamResources;

    aget-object v5, v7, v0

    .line 313
    .local v5, streamRes:Lmiui/view/VolumePanel$StreamResources;
    iget v6, v5, Lmiui/view/VolumePanel$StreamResources;->streamType:I

    .line 314
    .local v6, streamType:I
    iget-boolean v7, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-eqz v7, :cond_0

    sget-object v7, Lmiui/view/VolumePanel$StreamResources;->NotificationStream:Lmiui/view/VolumePanel$StreamResources;

    if-ne v5, v7, :cond_0

    .line 315
    sget-object v5, Lmiui/view/VolumePanel$StreamResources;->RingerStream:Lmiui/view/VolumePanel$StreamResources;

    .line 317
    :cond_0
    new-instance v4, Lmiui/view/VolumePanel$StreamControl;

    invoke-direct {v4, p0, v9}, Lmiui/view/VolumePanel$StreamControl;-><init>(Lmiui/view/VolumePanel;Lmiui/view/VolumePanel$1;)V

    .line 318
    .local v4, sc:Lmiui/view/VolumePanel$StreamControl;
    iput v6, v4, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 319
    const v7, 0x6030029

    invoke-virtual {v1, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    .line 320
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v7, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 321
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x60b0011

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    .line 322
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 323
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v5, Lmiui/view/VolumePanel$StreamResources;->descRes:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    iget v7, v5, Lmiui/view/VolumePanel$StreamResources;->iconRes:I

    iput v7, v4, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 325
    iget v7, v5, Lmiui/view/VolumePanel$StreamResources;->iconMuteRes:I

    iput v7, v4, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 326
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v8, v4, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 327
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const v8, 0x60b0012

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    .line 328
    const/4 v7, 0x6

    if-eq v6, v7, :cond_1

    if-nez v6, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 330
    .local v2, plusOne:I
    :goto_1
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v8, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v7, v8}, Landroid/widget/SeekBar;->setMax(I)V

    .line 331
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 332
    iget-object v7, v4, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 333
    iget-object v7, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 328
    .end local v2           #plusOne:I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 335
    .end local v4           #sc:Lmiui/view/VolumePanel$StreamControl;
    .end local v5           #streamRes:Lmiui/view/VolumePanel$StreamResources;
    .end local v6           #streamType:I
    :cond_3
    return-void
.end method

.method private expand()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 386
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 387
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 388
    iget-object v2, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 390
    :cond_0
    iget-object v2, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 392
    return-void
.end method

.method private forceTimeout()V
    .locals 1

    .prologue
    const/4 v0, 0x5

    .line 718
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 719
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->sendMessage(Landroid/os/Message;)Z

    .line 720
    return-void
.end method

.method private getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;
    .locals 4
    .parameter "streamType"

    .prologue
    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 630
    :try_start_1
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v3, 0x64

    invoke-direct {v2, p1, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    aput-object v2, v1, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 638
    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, p1

    monitor-exit p0

    return-object v1

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v1, :cond_0

    .line 633
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToneGenerator constructor failed with RuntimeException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 639
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private isExpanded()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMuted(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 303
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0

    return v0
.end method

.method private listenToRingerMode()V
    .locals 3

    .prologue
    .line 287
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 288
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    iget-object v1, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lmiui/view/VolumePanel$4;

    invoke-direct {v2, p0}, Lmiui/view/VolumePanel$4;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    return-void
.end method

.method private reorderSliders(I)V
    .locals 4
    .parameter "activeStreamType"

    .prologue
    .line 338
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 340
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 341
    .local v0, active:Lmiui/view/VolumePanel$StreamControl;
    if-nez v0, :cond_0

    .line 342
    const-string v1, "VolumePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing stream type! - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/4 v1, -0x1

    iput v1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 351
    :goto_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->addOtherVolumes()V

    .line 352
    return-void

    .line 345
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    iget-object v2, v0, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 346
    iput p1, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    .line 347
    iget-object v1, v0, Lmiui/view/VolumePanel$StreamControl;->group:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 348
    invoke-direct {p0, v0}, Lmiui/view/VolumePanel;->updateSlider(Lmiui/view/VolumePanel$StreamControl;)V

    goto :goto_0
.end method

.method private resetTimeout()V
    .locals 3

    .prologue
    const/4 v0, 0x5

    .line 713
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 714
    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 715
    return-void
.end method

.method private setMusicIcon(II)V
    .locals 3
    .parameter "resId"
    .parameter "resMuteId"

    .prologue
    .line 648
    iget-object v1, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 649
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v0, :cond_0

    .line 650
    iput p1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    .line 651
    iput p2, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    .line 652
    iget-object v2, v0, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    :cond_0
    return-void

    .line 652
    :cond_1
    iget v1, v0, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_0
.end method

.method private updateSlider(Lmiui/view/VolumePanel$StreamControl;)V
    .locals 5
    .parameter "sc"

    .prologue
    const/4 v2, 0x0

    .line 371
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v4, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getLastAudibleStreamVolume(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 372
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-direct {p0, v1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v0

    .line 373
    .local v0, muted:Z
    iget-object v3, p1, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 374
    iget-object v3, p1, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconMuteRes:I

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 375
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p1, Lmiui/view/VolumePanel$StreamControl;->icon:Landroid/widget/ImageView;

    const v2, 0x6020117

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 379
    :cond_0
    return-void

    :cond_1
    move v1, v2

    .line 373
    goto :goto_0

    .line 374
    :cond_2
    iget v1, p1, Lmiui/view/VolumePanel$StreamControl;->iconRes:I

    goto :goto_1
.end method

.method private updateStates()V
    .locals 4

    .prologue
    .line 404
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 405
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 406
    iget-object v3, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/view/VolumePanel$StreamControl;

    .line 407
    .local v2, sc:Lmiui/view/VolumePanel$StreamControl;
    invoke-direct {p0, v2}, Lmiui/view/VolumePanel;->updateSlider(Lmiui/view/VolumePanel$StreamControl;)V

    .line 405
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 409
    .end local v2           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 669
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 672
    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-virtual {p0, v1, v2, v0}, Lmiui/view/VolumePanel;->onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V

    goto :goto_0

    .line 677
    :pswitch_1
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onFreeResources()V

    goto :goto_0

    .line 682
    :pswitch_2
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    goto :goto_0

    .line 687
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0, v1}, Lmiui/view/VolumePanel;->onPlaySound(II)V

    goto :goto_0

    .line 692
    :pswitch_4
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onVibrate()V

    goto :goto_0

    .line 697
    :pswitch_5
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 699
    const/4 v0, -0x1

    iput v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    goto :goto_0

    .line 704
    :pswitch_6
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    invoke-direct {p0}, Lmiui/view/VolumePanel;->updateStates()V

    goto :goto_0

    .line 669
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 741
    iget-object v0, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 742
    invoke-direct {p0}, Lmiui/view/VolumePanel;->expand()V

    .line 744
    :cond_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 745
    return-void
.end method

.method protected onFreeResources()V
    .locals 3

    .prologue
    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 659
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 662
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 658
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 664
    :cond_1
    monitor-exit p0

    .line 665
    return-void

    .line 664
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onPlaySound(II)V
    .locals 4
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v2, 0x3

    .line 585
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    invoke-virtual {p0, v2}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 588
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 591
    :cond_0
    monitor-enter p0

    .line 592
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->getOrCreateToneGenerator(I)Landroid/media/ToneGenerator;

    move-result-object v0

    .line 593
    .local v0, toneGen:Landroid/media/ToneGenerator;
    if-eqz v0, :cond_1

    .line 594
    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 595
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v1, v2, v3}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 597
    :cond_1
    monitor-exit p0

    .line 598
    return-void

    .line 597
    .end local v0           #toneGen:Landroid/media/ToneGenerator;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 724
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 725
    .local v1, tag:Ljava/lang/Object;
    if-eqz p3, :cond_0

    instance-of v2, v1, Lmiui/view/VolumePanel$StreamControl;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 726
    check-cast v0, Lmiui/view/VolumePanel$StreamControl;

    .line 727
    .local v0, sc:Lmiui/view/VolumePanel$StreamControl;
    iget-object v2, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-eq v2, p2, :cond_0

    .line 728
    iget-object v2, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    iget v3, v0, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p2, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 731
    .end local v0           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_0
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 732
    return-void
.end method

.method protected onShowVolumeChanged(II)V
    .locals 10
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const v9, 0x6020020

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 479
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamMute(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    .line 483
    .local v0, index:I
    :goto_0
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    .line 485
    sget-boolean v4, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v4, :cond_0

    .line 486
    const-string v4, "VolumePanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onShowVolumeChanged(streamType: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", flags: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "), index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamMaxVolume(I)I

    move-result v1

    .line 494
    .local v1, max:I
    packed-switch p1, :pswitch_data_0

    .line 555
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v4, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/view/VolumePanel$StreamControl;

    .line 556
    .local v3, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v3, :cond_3

    .line 557
    iget-object v4, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    if-eq v4, v1, :cond_2

    .line 558
    iget-object v4, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 560
    :cond_2
    iget-object v4, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-virtual {v4, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 561
    iget-object v7, v3, Lmiui/view/VolumePanel$StreamControl;->seekbarView:Landroid/widget/SeekBar;

    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->isMuted(I)Z

    move-result v4

    if-nez v4, :cond_9

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 564
    :cond_3
    iget-object v4, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 565
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, p1}, Landroid/media/AudioManager;->forceVolumeControlStream(I)V

    .line 566
    iget-object v4, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 568
    iget-boolean v4, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    if-eqz v4, :cond_4

    .line 569
    invoke-direct {p0}, Lmiui/view/VolumePanel;->collapse()V

    .line 571
    :cond_4
    iget-object v4, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 575
    :cond_5
    and-int/lit8 v4, p2, 0x10

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4}, Landroid/media/AudioService;->getRingerMode()I

    move-result v4

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, v6}, Landroid/media/AudioService;->shouldVibrate(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 579
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {p0, v4, v5, v6}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    :cond_6
    return-void

    .line 479
    .end local v0           #index:I
    .end local v1           #max:I
    .end local v3           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_7
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v4, p1}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    goto/16 :goto_0

    .line 498
    .restart local v0       #index:I
    .restart local v1       #max:I
    :pswitch_1
    iget-object v4, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 500
    .local v2, ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 501
    iput-boolean v5, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 508
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_2
    iget-object v4, p0, Lmiui/view/VolumePanel;->mAudioManager:Landroid/media/AudioManager;

    const/4 v7, 0x3

    invoke-virtual {v4, v7}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v4

    and-int/lit16 v4, v4, 0x380

    if-eqz v4, :cond_8

    .line 512
    const v4, 0x6020156

    const v7, 0x6020157

    invoke-direct {p0, v4, v7}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 514
    :cond_8
    invoke-direct {p0, v9, v9}, Lmiui/view/VolumePanel;->setMusicIcon(II)V

    goto/16 :goto_1

    .line 525
    :pswitch_3
    add-int/lit8 v0, v0, 0x1

    .line 526
    add-int/lit8 v1, v1, 0x1

    .line 527
    goto/16 :goto_1

    .line 535
    :pswitch_4
    iget-object v4, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v4, v7}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 537
    .restart local v2       #ringuri:Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 538
    iput-boolean v5, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    goto/16 :goto_1

    .line 549
    .end local v2           #ringuri:Landroid/net/Uri;
    :pswitch_5
    add-int/lit8 v0, v0, 0x1

    .line 550
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .restart local v3       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_9
    move v4, v6

    .line 561
    goto/16 :goto_2

    .line 494
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 735
    return-void
.end method

.method protected onStopSounds()V
    .locals 4

    .prologue
    .line 602
    monitor-enter p0

    .line 603
    :try_start_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 604
    .local v1, numStreamTypes:I
    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 605
    iget-object v3, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    aget-object v2, v3, v0

    .line 606
    .local v2, toneGen:Landroid/media/ToneGenerator;
    if-eqz v2, :cond_0

    .line 607
    invoke-virtual {v2}, Landroid/media/ToneGenerator;->stopTone()V

    .line 604
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 610
    .end local v2           #toneGen:Landroid/media/ToneGenerator;
    :cond_1
    monitor-exit p0

    .line 611
    return-void

    .line 610
    .end local v0           #i:I
    .end local v1           #numStreamTypes:I
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 738
    return-void
.end method

.method protected onVibrate()V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_0
    iget-object v0, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method

.method protected onVolumeChanged(IILmiui/view/VolumePanel$VolumeChangeInfo;)V
    .locals 5
    .parameter "streamType"
    .parameter "flags"
    .parameter "vc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 448
    sget-boolean v0, Lmiui/view/VolumePanel;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "VolumePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVolumeChanged(streamType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    .line 451
    iget v0, p0, Lmiui/view/VolumePanel;->mActiveStreamType:I

    if-eq v0, p1, :cond_1

    .line 452
    invoke-direct {p0, p1}, Lmiui/view/VolumePanel;->reorderSliders(I)V

    .line 454
    :cond_1
    invoke-virtual {p0, p1, p2}, Lmiui/view/VolumePanel;->onShowVolumeChanged(II)V

    .line 456
    if-ne v3, p1, :cond_2

    iget v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    if-nez v0, :cond_2

    .line 457
    iget v0, p3, Lmiui/view/VolumePanel$VolumeChangeInfo;->mFromVolume:I

    iput v0, p0, Lmiui/view/VolumePanel;->mRestoreRingVolume:I

    .line 461
    :cond_2
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lmiui/view/VolumePanel;->mRingIsSilent:Z

    if-nez v0, :cond_3

    .line 462
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 463
    invoke-virtual {p0, v3, p1, p2}, Lmiui/view/VolumePanel;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 466
    :cond_3
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 467
    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 468
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 469
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->onStopSounds()V

    .line 472
    :cond_4
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 473
    invoke-virtual {p0, v4}, Lmiui/view/VolumePanel;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lmiui/view/VolumePanel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 475
    invoke-direct {p0}, Lmiui/view/VolumePanel;->resetTimeout()V

    .line 476
    return-void
.end method

.method public postVolumeChanged(II)V
    .locals 7
    .parameter "streamType"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 412
    const/4 v0, 0x0

    .line 413
    .local v0, from:I
    const/4 v2, 0x0

    .line 414
    .local v2, to:I
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    .line 415
    iget v0, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 416
    iget-object v3, p0, Lmiui/view/VolumePanel;->mAudioService:Landroid/media/AudioService;

    invoke-virtual {v3, p1}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    .line 417
    iput v2, p0, Lmiui/view/VolumePanel;->mLastAudibleRingVolume:I

    .line 420
    :cond_0
    invoke-virtual {p0, v6}, Lmiui/view/VolumePanel;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 439
    :goto_0
    return-void

    .line 421
    :cond_1
    invoke-virtual {p0}, Lmiui/view/VolumePanel;->recreateIfNeeded()V

    .line 422
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 423
    invoke-direct {p0}, Lmiui/view/VolumePanel;->createSliders()V

    .line 427
    :cond_2
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 428
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/view/VolumePanel$StreamControl;

    .line 429
    .local v1, sc:Lmiui/view/VolumePanel$StreamControl;
    if-eqz v1, :cond_4

    .line 430
    iput p1, v1, Lmiui/view/VolumePanel$StreamControl;->streamType:I

    .line 431
    iget-object v3, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    .end local v1           #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmiui/view/VolumePanel;->removeMessages(I)V

    .line 438
    new-instance v3, Lmiui/view/VolumePanel$VolumeChangeInfo;

    invoke-direct {v3, v0, v2}, Lmiui/view/VolumePanel$VolumeChangeInfo;-><init>(II)V

    invoke-virtual {p0, v6, p1, p2, v3}, Lmiui/view/VolumePanel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 433
    .restart local v1       #sc:Lmiui/view/VolumePanel$StreamControl;
    :cond_4
    const-string v3, "VolumePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unkown stream type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was not bind any streamcontrol"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public recreateIfNeeded()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v6, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 209
    iget-object v5, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 210
    .local v0, config:Landroid/content/res/Configuration;
    if-nez v0, :cond_0

    move v3, v6

    .line 211
    .local v3, themeChanged:I
    :goto_0
    iget v5, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    if-ne v5, v3, :cond_1

    .line 284
    :goto_1
    return-void

    .line 210
    .end local v3           #themeChanged:I
    :cond_0
    iget-object v5, v0, Landroid/content/res/Configuration;->extraConfig:Lmiui/content/res/ExtraConfiguration;

    iget v3, v5, Lmiui/content/res/ExtraConfiguration;->themeChanged:I

    goto :goto_0

    .line 213
    .restart local v3       #themeChanged:I
    :cond_1
    iput v3, p0, Lmiui/view/VolumePanel;->mThemeChanged:I

    .line 214
    iput-object v9, p0, Lmiui/view/VolumePanel;->mStreamControls:Ljava/util/HashMap;

    .line 216
    iget-object v5, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 218
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v5, 0x6030028

    invoke-virtual {v1, v5, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    .line 219
    iget-object v5, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    new-instance v7, Lmiui/view/VolumePanel$1;

    invoke-direct {v7, p0}, Lmiui/view/VolumePanel$1;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v5, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    iget-object v5, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x60b000d

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lmiui/view/VolumePanel;->mPanel:Landroid/view/ViewGroup;

    .line 226
    iget-object v5, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x60b000e

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lmiui/view/VolumePanel;->mSliderGroup:Landroid/view/ViewGroup;

    .line 227
    iget-object v5, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x60b000f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    .line 228
    iget-object v5, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    const v7, 0x60b0010

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    .line 230
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    if-eqz v5, :cond_3

    .line 231
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 248
    :goto_2
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    const-string v7, "Volume control"

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 250
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    new-instance v7, Lmiui/view/VolumePanel$3;

    invoke-direct {v7, p0}, Lmiui/view/VolumePanel$3;-><init>(Lmiui/view/VolumePanel;)V

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 261
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 262
    .local v4, window:Landroid/view/Window;
    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/view/Window;->setGravity(I)V

    .line 263
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 264
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    iput-object v9, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 266
    iget-object v5, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x60a001e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 268
    const/16 v5, 0x7e4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 269
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 270
    iput v10, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 271
    invoke-virtual {v4, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 272
    const v5, 0x40028

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 275
    iget-object v5, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x6090009

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    .line 276
    iget-boolean v5, p0, Lmiui/view/VolumePanel;->mVoiceCapable:Z

    if-nez v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    iput-boolean v6, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    .line 278
    iget-boolean v5, p0, Lmiui/view/VolumePanel;->mShowCombinedVolumes:Z

    if-nez v5, :cond_4

    .line 279
    iget-object v5, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 280
    iget-object v5, p0, Lmiui/view/VolumePanel;->mDivider:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 234
    .end local v2           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #window:Landroid/view/Window;
    :cond_3
    new-instance v5, Lmiui/view/VolumePanel$2;

    iget-object v7, p0, Lmiui/view/VolumePanel;->mContext:Landroid/content/Context;

    const v8, 0x60d0025

    invoke-direct {v5, p0, v7, v8}, Lmiui/view/VolumePanel$2;-><init>(Lmiui/view/VolumePanel;Landroid/content/Context;I)V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mDialog:Landroid/app/Dialog;

    .line 244
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    new-array v5, v5, [Landroid/media/ToneGenerator;

    iput-object v5, p0, Lmiui/view/VolumePanel;->mToneGenerators:[Landroid/media/ToneGenerator;

    .line 245
    new-instance v5, Landroid/os/Vibrator;

    invoke-direct {v5}, Landroid/os/Vibrator;-><init>()V

    iput-object v5, p0, Lmiui/view/VolumePanel;->mVibrator:Landroid/os/Vibrator;

    goto/16 :goto_2

    .line 282
    .restart local v2       #lp:Landroid/view/WindowManager$LayoutParams;
    .restart local v4       #window:Landroid/view/Window;
    :cond_4
    iget-object v5, p0, Lmiui/view/VolumePanel;->mMoreButton:Landroid/view/View;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1
.end method
