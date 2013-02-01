.class public abstract Lcom/stericsson/hardware/fm/FmReceiver;
.super Ljava/lang/Object;
.source "FmReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;,
        Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;
    }
.end annotation


# static fields
.field public static final RESET_CRITICAL:I = 0x1

.field public static final RESET_NON_CRITICAL:I = 0x0

.field public static final RESET_RADIO_FORBIDDEN:I = 0x3

.field public static final RESET_TX_IN_USE:I = 0x2

.field public static final SCAN_DOWN:I = 0x0

.field public static final SCAN_UP:I = 0x1

.field public static final SIGNAL_STRENGTH_UNKNOWN:I = -0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_SCANNING:I = 0x4

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STARTING:I = 0x1

.field public static final SWITCH_AF:I = 0x0

.field public static final SWITCH_TA:I = 0x1

.field public static final SWITCH_TA_END:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1310
    return-void
.end method

.method public static isApiSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 459
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.stericsson.hardware.fm.receiver"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract addOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
.end method

.method public abstract addOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
.end method

.method public abstract addOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
.end method

.method public abstract addOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
.end method

.method public abstract addOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
.end method

.method public abstract addOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
.end method

.method public abstract addOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
.end method

.method public abstract addOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
.end method

.method public abstract addOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
.end method

.method public abstract addOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
.end method

.method public abstract addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
.end method

.method public abstract getFrequency()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getSignalStrength()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract getThreshold()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isPlayingInStereo()Z
.end method

.method public abstract isRDSDataSupported()Z
.end method

.method public abstract isTunedToValidChannel()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeOnAutomaticSwitchListener(Lcom/stericsson/hardware/fm/FmReceiver$OnAutomaticSwitchListener;)V
.end method

.method public abstract removeOnErrorListener(Lcom/stericsson/hardware/fm/FmReceiver$OnErrorListener;)V
.end method

.method public abstract removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmReceiver$OnExtraCommandListener;)V
.end method

.method public abstract removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedPauseListener;)V
.end method

.method public abstract removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmReceiver$OnForcedResetListener;)V
.end method

.method public abstract removeOnPlayingInStereoListener(Lcom/stericsson/hardware/fm/FmReceiver$OnPlayingInStereoListener;)V
.end method

.method public abstract removeOnRDSDataFoundListener(Lcom/stericsson/hardware/fm/FmReceiver$OnRDSDataFoundListener;)V
.end method

.method public abstract removeOnScanListener(Lcom/stericsson/hardware/fm/FmReceiver$OnScanListener;)V
.end method

.method public abstract removeOnSignalStrengthChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnSignalStrengthChangedListener;)V
.end method

.method public abstract removeOnStartedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStartedListener;)V
.end method

.method public abstract removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmReceiver$OnStateChangedListener;)V
.end method

.method public abstract reset()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract scanDown()V
.end method

.method public abstract scanUp()V
.end method

.method public abstract sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract setAutomaticAFSwitching(Z)V
.end method

.method public abstract setAutomaticTASwitching(Z)V
.end method

.method public abstract setForceMono(Z)V
.end method

.method public abstract setFrequency(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setThreshold(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract start(Lcom/stericsson/hardware/fm/FmBand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startAsync(Lcom/stericsson/hardware/fm/FmBand;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startFullScan()V
.end method

.method public abstract stopScan()V
.end method
