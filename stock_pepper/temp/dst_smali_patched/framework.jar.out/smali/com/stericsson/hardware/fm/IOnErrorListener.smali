.class public interface abstract Lcom/stericsson/hardware/fm/IOnErrorListener;
.super Ljava/lang/Object;
.source "IOnErrorListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnErrorListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
