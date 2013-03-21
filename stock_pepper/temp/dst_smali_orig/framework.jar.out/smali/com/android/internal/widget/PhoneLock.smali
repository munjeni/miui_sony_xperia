.class Lcom/android/internal/widget/PhoneLock;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "phonelock"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native read_ta_phone_lock()Z
.end method

.method public static native write_ta_phone_lock(Z)V
.end method
