.class Lmiui/app/screenelement/elements/TimepanelScreenElement$1;
.super Ljava/lang/Object;
.source "TimepanelScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/TimepanelScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/app/screenelement/elements/TimepanelScreenElement;


# direct methods
.method constructor <init>(Lmiui/app/screenelement/elements/TimepanelScreenElement;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lmiui/app/screenelement/elements/TimepanelScreenElement$1;->this$0:Lmiui/app/screenelement/elements/TimepanelScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/TimepanelScreenElement$1;->this$0:Lmiui/app/screenelement/elements/TimepanelScreenElement;

    #calls: Lmiui/app/screenelement/elements/TimepanelScreenElement;->updateTime()V
    invoke-static {v1}, Lmiui/app/screenelement/elements/TimepanelScreenElement;->access$000(Lmiui/app/screenelement/elements/TimepanelScreenElement;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    iget-object v1, p0, Lmiui/app/screenelement/elements/TimepanelScreenElement$1;->this$0:Lmiui/app/screenelement/elements/TimepanelScreenElement;

    #getter for: Lmiui/app/screenelement/elements/TimepanelScreenElement;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/app/screenelement/elements/TimepanelScreenElement;->access$100(Lmiui/app/screenelement/elements/TimepanelScreenElement;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 55
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
