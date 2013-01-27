.class Lmiui/app/screenelement/ActionCommand$NotificationReceiver$1;
.super Ljava/lang/Object;
.source "ActionCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->asyncUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/ActionCommand$NotificationReceiver;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/ActionCommand$NotificationReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver$1;->this$0:Lmiui/app/screenelement/ActionCommand$NotificationReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$NotificationReceiver$1;->this$0:Lmiui/app/screenelement/ActionCommand$NotificationReceiver;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand$NotificationReceiver;->update()V

    .line 95
    return-void
.end method
