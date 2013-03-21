.class public interface abstract Lcom/android/internal/telephony/cat/AppInterface;
.super Ljava/lang/Object;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    }
.end annotation


# static fields
.field public static final CAT_BUSY_SCREEN_ACTION:Ljava/lang/String; = "com.sonyericsson.intent.action.stk.busy_screen"

.field public static final CAT_CMD_ACTION:Ljava/lang/String; = "android.intent.action.stk.command"

.field public static final CAT_SESSION_END_ACTION:Ljava/lang/String; = "android.intent.action.stk.session_end"

.field public static final CAT_TERMINATE_ACTION:Ljava/lang/String; = "com.sonyericsson.intent.action.stk.terminate"

.field public static final CAT_USER_ACTIVITY:Ljava/lang/String; = "com.sonyericsson.intent.action.stk.user_activity"

.field public static final USER_ACTIVITY_REQUEST_ACTION:Ljava/lang/String; = "com.sonyericsson.intent.action.stk.user_activity_request"


# virtual methods
.method public abstract onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
.end method

.method public abstract onEventDownload(Lcom/android/internal/telephony/cat/CatEventMessage;)V
.end method
