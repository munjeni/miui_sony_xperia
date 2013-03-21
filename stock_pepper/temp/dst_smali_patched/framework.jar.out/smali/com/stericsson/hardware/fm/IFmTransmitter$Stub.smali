.class public abstract Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;
.super Landroid/os/Binder;
.source "IFmTransmitter.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/IFmTransmitter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/IFmTransmitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IFmTransmitter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.stericsson.hardware.fm.IFmTransmitter"

.field static final TRANSACTION_addOnBlockScanListener:I = 0x14

.field static final TRANSACTION_addOnErrorListener:I = 0x12

.field static final TRANSACTION_addOnExtraCommandListener:I = 0x1a

.field static final TRANSACTION_addOnForcedPauseListener:I = 0x16

.field static final TRANSACTION_addOnForcedResetListener:I = 0x18

.field static final TRANSACTION_addOnStartedListener:I = 0x10

.field static final TRANSACTION_addOnStateChangedListener:I = 0xe

.field static final TRANSACTION_getFrequency:I = 0x7

.field static final TRANSACTION_getState:I = 0x6

.field static final TRANSACTION_isBlockScanSupported:I = 0x9

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_removeOnBlockScanListener:I = 0x15

.field static final TRANSACTION_removeOnErrorListener:I = 0x13

.field static final TRANSACTION_removeOnExtraCommandListener:I = 0x1b

.field static final TRANSACTION_removeOnForcedPauseListener:I = 0x17

.field static final TRANSACTION_removeOnForcedResetListener:I = 0x19

.field static final TRANSACTION_removeOnStartedListener:I = 0x11

.field static final TRANSACTION_removeOnStateChangedListener:I = 0xf

.field static final TRANSACTION_reset:I = 0x3

.field static final TRANSACTION_resume:I = 0x5

.field static final TRANSACTION_sendExtraCommand:I = 0xd

.field static final TRANSACTION_setFrequency:I = 0x8

.field static final TRANSACTION_setRdsData:I = 0xc

.field static final TRANSACTION_start:I = 0x1

.field static final TRANSACTION_startAsync:I = 0x2

.field static final TRANSACTION_startBlockScan:I = 0xa

.field static final TRANSACTION_stopScan:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p0, p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IFmTransmitter;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/stericsson/hardware/fm/IFmTransmitter;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/stericsson/hardware/fm/IFmTransmitter;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/stericsson/hardware/fm/FmBand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericsson/hardware/fm/FmBand;

    .local v0, _arg0:Lcom/stericsson/hardware/fm/FmBand;
    :goto_1
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->start(Lcom/stericsson/hardware/fm/FmBand;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    goto :goto_1

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    :sswitch_2
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/stericsson/hardware/fm/FmBand;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericsson/hardware/fm/FmBand;

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    :goto_2
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->startAsync(Lcom/stericsson/hardware/fm/FmBand;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    goto :goto_2

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/FmBand;
    :sswitch_3
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->reset()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_4
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->pause()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_5
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->resume()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_6
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->getState()I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .end local v2           #_result:I
    :sswitch_7
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->getFrequency()I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_result:I
    :sswitch_8
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->setFrequency(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_9
    const-string v5, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->isBlockScanSupported()Z

    move-result v2

    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v2           #_result:Z
    :sswitch_a
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->startBlockScan(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_b
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->stopScan()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :sswitch_c
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .local v0, _arg0:Landroid/os/Bundle;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->setRdsData(Landroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_3

    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_d
    const-string v5, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .local v1, _arg1:[Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->sendExtraCommand(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:[Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_e
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnStateChangedListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnStateChangedListener;
    :sswitch_f
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnStateChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnStateChangedListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnStateChangedListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnStateChangedListener(Lcom/stericsson/hardware/fm/IOnStateChangedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnStateChangedListener;
    :sswitch_10
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnStartedListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnStartedListener;
    :sswitch_11
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnStartedListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnStartedListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnStartedListener(Lcom/stericsson/hardware/fm/IOnStartedListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnStartedListener;
    :sswitch_12
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnErrorListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnErrorListener;
    :sswitch_13
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnErrorListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnErrorListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnErrorListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnErrorListener(Lcom/stericsson/hardware/fm/IOnErrorListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnErrorListener;
    :sswitch_14
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnBlockScanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnBlockScanListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnBlockScanListener;
    :sswitch_15
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnBlockScanListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnBlockScanListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnBlockScanListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnBlockScanListener(Lcom/stericsson/hardware/fm/IOnBlockScanListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnBlockScanListener;
    :sswitch_16
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnForcedPauseListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnForcedPauseListener;
    :sswitch_17
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnForcedPauseListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnForcedPauseListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnForcedPauseListener(Lcom/stericsson/hardware/fm/IOnForcedPauseListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnForcedPauseListener;
    :sswitch_18
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnForcedResetListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnForcedResetListener;
    :sswitch_19
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnForcedResetListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnForcedResetListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnForcedResetListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnForcedResetListener(Lcom/stericsson/hardware/fm/IOnForcedResetListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnForcedResetListener;
    :sswitch_1a
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v0

    .local v0, _arg0:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->addOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
    :sswitch_1b
    const-string v3, "com.stericsson.hardware.fm.IFmTransmitter"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/stericsson/hardware/fm/IOnExtraCommandListener;

    move-result-object v0

    .restart local v0       #_arg0:Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
    invoke-virtual {p0, v0}, Lcom/stericsson/hardware/fm/IFmTransmitter$Stub;->removeOnExtraCommandListener(Lcom/stericsson/hardware/fm/IOnExtraCommandListener;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
