.class Lcom/stericsson/hardware/fm/IOnScanListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnScanListener.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/IOnScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/IOnScanListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/stericsson/hardware/fm/IOnScanListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 83
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/stericsson/hardware/fm/IOnScanListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "com.stericsson.hardware.fm.IOnScanListener"

    return-object v0
.end method

.method public onFullScan([I[IZ)V
    .locals 5
    .parameter "frequency"
    .parameter "signalLevel"
    .parameter "aborted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.stericsson.hardware.fm.IOnScanListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 113
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 114
    if-eqz p3, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v1, p0, Lcom/stericsson/hardware/fm/IOnScanListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 120
    return-void

    .line 114
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method

.method public onScan(IIIZ)V
    .locals 5
    .parameter "tunedFrequency"
    .parameter "signalLevel"
    .parameter "scanDirection"
    .parameter "aborted"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 94
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 96
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.stericsson.hardware.fm.IOnScanListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    if-eqz p4, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v1, p0, Lcom/stericsson/hardware/fm/IOnScanListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 106
    return-void

    .line 100
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
