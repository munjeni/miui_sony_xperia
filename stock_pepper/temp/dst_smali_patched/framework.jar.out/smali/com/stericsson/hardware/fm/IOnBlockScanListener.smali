.class public interface abstract Lcom/stericsson/hardware/fm/IOnBlockScanListener;
.super Ljava/lang/Object;
.source "IOnBlockScanListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnBlockScanListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBlockScan([I[IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
