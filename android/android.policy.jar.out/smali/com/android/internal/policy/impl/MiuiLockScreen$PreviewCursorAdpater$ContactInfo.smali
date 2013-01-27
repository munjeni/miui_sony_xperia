.class public Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;
.super Ljava/lang/Object;
.source "MiuiLockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ContactInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;)V
    .locals 1
    .parameter

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->this$1:Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1048
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiLockScreen$PreviewCursorAdpater$ContactInfo;->name:Ljava/lang/String;

    return-void
.end method
