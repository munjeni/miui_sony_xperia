.class public interface abstract Lcom/stericsson/hardware/fm/IOnExtraCommandListener;
.super Ljava/lang/Object;
.source "IOnExtraCommandListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnExtraCommandListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
