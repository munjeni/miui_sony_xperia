.class public interface abstract Lcom/android/internal/app/IAssetRedirectionManager;
.super Ljava/lang/Object;
.source "IAssetRedirectionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IAssetRedirectionManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearPackageRedirectionMap(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearRedirectionMapsByTheme(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPackageRedirectionMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/PackageRedirectionMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
