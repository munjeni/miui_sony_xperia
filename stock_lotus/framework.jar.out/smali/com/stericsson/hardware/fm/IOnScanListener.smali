.class public interface abstract Lcom/stericsson/hardware/fm/IOnScanListener;
.super Ljava/lang/Object;
.source "IOnScanListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnScanListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFullScan([I[IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onScan(IIIZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
