.class public interface abstract Lcom/miui/internal/policy/impl/SlidingPanel$OnTriggerListener;
.super Ljava/lang/Object;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/policy/impl/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnTriggerListener"
.end annotation


# static fields
.field public static final DOUBLE_CLICK_HANDLE:I = 0x6

.field public static final LEFT_HANDLE:I = 0x1

.field public static final MIDDLE_HANDLE:I = 0x3

.field public static final NO_HANDLE:I = 0x0

.field public static final POKE_HANDLE:I = 0x4

.field public static final RIGHT_HANDLE:I = 0x2

.field public static final SLIDING_HANDLE:I = 0x5


# virtual methods
.method public abstract onGrabbedStateChange(Landroid/view/View;I)V
.end method

.method public abstract onTrigger(Landroid/view/View;I)V
.end method
