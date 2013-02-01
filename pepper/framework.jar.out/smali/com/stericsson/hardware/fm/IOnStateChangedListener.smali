.class public interface abstract Lcom/stericsson/hardware/fm/IOnStateChangedListener;
.super Ljava/lang/Object;
.source "IOnStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnStateChangedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStateChanged(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
