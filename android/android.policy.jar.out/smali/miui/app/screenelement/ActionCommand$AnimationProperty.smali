.class Lmiui/app/screenelement/ActionCommand$AnimationProperty;
.super Lmiui/app/screenelement/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationProperty"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "animation"


# instance fields
.field private mIsPlay:Z


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    .line 975
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V

    .line 976
    const-string v0, "play"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$AnimationProperty;->mIsPlay:Z

    .line 978
    :cond_0
    return-void
.end method


# virtual methods
.method public doPerform()V
    .locals 1

    .prologue
    .line 982
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$AnimationProperty;->mIsPlay:Z

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$AnimationProperty;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->reset()V

    .line 985
    :cond_0
    return-void
.end method
