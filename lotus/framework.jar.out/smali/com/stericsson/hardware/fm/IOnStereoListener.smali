.class public interface abstract Lcom/stericsson/hardware/fm/IOnStereoListener;
.super Ljava/lang/Object;
.source "IOnStereoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnStereoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onPlayingInStereo(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
