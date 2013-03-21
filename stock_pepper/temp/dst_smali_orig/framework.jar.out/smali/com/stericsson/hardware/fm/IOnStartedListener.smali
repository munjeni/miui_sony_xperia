.class public interface abstract Lcom/stericsson/hardware/fm/IOnStartedListener;
.super Ljava/lang/Object;
.source "IOnStartedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnStartedListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
