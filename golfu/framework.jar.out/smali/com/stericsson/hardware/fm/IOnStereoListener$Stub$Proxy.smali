.class Lcom/stericsson/hardware/fm/IOnStereoListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnStereoListener.java"

# interfaces
.implements Lcom/stericsson/hardware/fm/IOnStereoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericsson/hardware/fm/IOnStereoListener$Stub;
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
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/stericsson/hardware/fm/IOnStereoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/stericsson/hardware/fm/IOnStereoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, "com.stericsson.hardware.fm.IOnStereoListener"

    return-object v0
.end method

.method public onPlayingInStereo(Z)V
    .locals 5
    .parameter "inStereo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 76
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 78
    .local v0, _data:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.stericsson.hardware.fm.IOnStereoListener"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 79
    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v1, p0, Lcom/stericsson/hardware/fm/IOnStereoListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 85
    return-void

    .line 79
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1
.end method
