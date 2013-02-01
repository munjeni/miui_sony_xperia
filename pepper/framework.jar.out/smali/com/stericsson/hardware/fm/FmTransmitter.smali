.class public abstract Lcom/stericsson/hardware/fm/FmTransmitter;
.super Ljava/lang/Object;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;,
        Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;,
        Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;,
        Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;,
        Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;,
        Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;,
        Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;
    }
.end annotation


# static fields
.field public static final RESET_CRITICAL:I = 0x1

.field public static final RESET_NON_CRITICAL:I = 0x0

.field public static final RESET_RADIO_FORBIDDEN:I = 0x3

.field public static final RESET_RX_IN_USE:I = 0x2

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_PAUSED:I = 0x3

.field public static final STATE_SCANNING:I = 0x4

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STARTING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    return-void
.end method

.method public static isApiSupported(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.stericsson.hardware.fm.transmitter"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract addOnErrorListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V
.end method

.method public abstract addOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V
.end method

.method public abstract addOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
.end method

.method public abstract addOnForcedResetListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V
.end method

.method public abstract addOnScanListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
.end method

.method public abstract addOnStartedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
.end method

.method public abstract addOnStateChangedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V
.end method

.method public abstract getFrequency()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getState()I
.end method

.method public abstract isBlockScanSupported()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract removeOnErrorListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnErrorListener;)V
.end method

.method public abstract removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnExtraCommandListener;)V
.end method

.method public abstract removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedPauseListener;)V
.end method

.method public abstract removeOnForcedResetListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnForcedResetListener;)V
.end method

.method public abstract removeOnScanListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnScanListener;)V
.end method

.method public abstract removeOnStartedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStartedListener;)V
.end method

.method public abstract removeOnStateChangedListener(Lcom/stericsson/hardware/fm/FmTransmitter$OnStateChangedListener;)V
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

.method public abstract sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z
.end method

.method public abstract setFrequency(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setRdsData(Landroid/os/Bundle;)V
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

.method public abstract startBlockScan(II)V
.end method

.method public abstract stopScan()V
.end method
