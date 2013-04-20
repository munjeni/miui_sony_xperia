.class Lcom/android/internal/app/IAssetRedirectionManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAssetRedirectionManager.java"

# interfaces
.implements Lcom/android/internal/app/IAssetRedirectionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IAssetRedirectionManager$Stub;
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
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/android/internal/app/IAssetRedirectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 97
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/app/IAssetRedirectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearPackageRedirectionMap(Ljava/lang/String;)V
    .locals 5
    .parameter "targetPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 162
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.IAssetRedirectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/internal/app/IAssetRedirectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 165
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return-void

    .line 168
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public clearRedirectionMapsByTheme(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "themePackageName"
    .parameter "themeId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 141
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 143
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.app.IAssetRedirectionManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/android/internal/app/IAssetRedirectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    .line 150
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    const-string v0, "com.android.internal.app.IAssetRedirectionManager"

    return-object v0
.end method

.method public getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/PackageRedirectionMap;
    .locals 6
    .parameter "themePackageName"
    .parameter "themeId"
    .parameter "targetPackageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 113
    .local v0, _data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 116
    .local v1, _reply:Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.android.internal.app.IAssetRedirectionManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v3, p0, Lcom/android/internal/app/IAssetRedirectionManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 121
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 122
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 123
    sget-object v3, Landroid/content/res/PackageRedirectionMap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/PackageRedirectionMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .local v2, _result:Landroid/content/res/PackageRedirectionMap;
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 133
    return-object v2

    .line 126
    .end local v2           #_result:Landroid/content/res/PackageRedirectionMap;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #_result:Landroid/content/res/PackageRedirectionMap;
    goto :goto_0

    .line 130
    .end local v2           #_result:Landroid/content/res/PackageRedirectionMap;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method
