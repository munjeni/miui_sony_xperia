.class public abstract Lmiui/app/screenelement/ActionCommand$PropertyCommand;
.super Lmiui/app/screenelement/ActionCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PropertyCommand"
.end annotation


# instance fields
.field protected mRoot:Lmiui/app/screenelement/ScreenElementRoot;

.field protected mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

.field private mTargetObj:Lmiui/app/screenelement/util/Variable;


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    .line 911
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand;-><init>(Lmiui/app/screenelement/ScreenContext;)V

    .line 912
    iput-object p2, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    .line 913
    iput-object p3, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/app/screenelement/util/Variable;

    .line 914
    return-void
.end method

.method public static create(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Ljava/lang/String;Ljava/lang/String;)Lmiui/app/screenelement/ActionCommand$PropertyCommand;
    .locals 3
    .parameter "context"
    .parameter "root"
    .parameter "target"
    .parameter "value"

    .prologue
    .line 917
    new-instance v0, Lmiui/app/screenelement/util/Variable;

    invoke-direct {v0, p2}, Lmiui/app/screenelement/util/Variable;-><init>(Ljava/lang/String;)V

    .line 918
    .local v0, t:Lmiui/app/screenelement/util/Variable;
    const-string v1, "visibility"

    invoke-virtual {v0}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 919
    new-instance v1, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;

    invoke-direct {v1, p0, p1, v0, p3}, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V

    .line 923
    :goto_0
    return-object v1

    .line 920
    :cond_0
    const-string v1, "animation"

    invoke-virtual {v0}, Lmiui/app/screenelement/util/Variable;->getPropertyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 921
    new-instance v1, Lmiui/app/screenelement/ActionCommand$AnimationProperty;

    invoke-direct {v1, p0, p1, v0, p3}, Lmiui/app/screenelement/ActionCommand$AnimationProperty;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V

    goto :goto_0

    .line 923
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public perform()V
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/app/screenelement/util/Variable;

    if-nez v0, :cond_0

    .line 940
    :goto_0
    return-void

    .line 931
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 932
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v1}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/app/screenelement/elements/ScreenElement;

    move-result-object v0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    .line 933
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    if-nez v0, :cond_1

    .line 934
    const-string v0, "ActionCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find PropertyCommand target, name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/app/screenelement/util/Variable;

    invoke-virtual {v2}, Lmiui/app/screenelement/util/Variable;->getObjName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->mTargetObj:Lmiui/app/screenelement/util/Variable;

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {p0}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;->doPerform()V

    goto :goto_0
.end method
