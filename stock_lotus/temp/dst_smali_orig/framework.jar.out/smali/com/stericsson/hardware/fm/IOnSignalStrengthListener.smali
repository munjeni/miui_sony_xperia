.class public interface abstract Lcom/stericsson/hardware/fm/IOnSignalStrengthListener;
.super Ljava/lang/Object;
.source "IOnSignalStrengthListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericsson/hardware/fm/IOnSignalStrengthListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSignalStrengthChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
