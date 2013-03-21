.class public interface abstract Lcom/stericsson/hardware/fm/IOnForcedPauseListener;
.super Ljava/lang/Object;
.source "IOnForcedPauseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnForcedPauseListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onForcedPause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
