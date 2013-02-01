.class public interface abstract Lcom/stericsson/hardware/fm/IOnForcedResetListener;
.super Ljava/lang/Object;
.source "IOnForcedResetListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnForcedResetListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onForcedReset(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
