.class public interface abstract Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener;
.super Ljava/lang/Object;
.source "IOnRDSDataFoundListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnRDSDataFoundListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRDSDataFound(Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
