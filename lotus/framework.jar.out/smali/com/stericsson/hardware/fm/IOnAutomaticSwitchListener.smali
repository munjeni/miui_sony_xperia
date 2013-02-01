.class public interface abstract Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener;
.super Ljava/lang/Object;
.source "IOnAutomaticSwitchListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnAutomaticSwitchListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAutomaticSwitch(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
