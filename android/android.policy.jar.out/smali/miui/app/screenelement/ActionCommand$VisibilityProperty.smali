.class Lmiui/app/screenelement/ActionCommand$VisibilityProperty;
.super Lmiui/app/screenelement/ActionCommand$PropertyCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityProperty"
.end annotation


# static fields
.field public static final PROPERTY_NAME:Ljava/lang/String; = "visibility"


# instance fields
.field private mIsShow:Z

.field private mIsToggle:Z


# direct methods
.method protected constructor <init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "root"
    .parameter "targetObj"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 951
    invoke-direct {p0, p1, p2, p3, p4}, Lmiui/app/screenelement/ActionCommand$PropertyCommand;-><init>(Lmiui/app/screenelement/ScreenContext;Lmiui/app/screenelement/ScreenElementRoot;Lmiui/app/screenelement/util/Variable;Ljava/lang/String;)V

    .line 952
    const-string v0, "toggle"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    iput-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mIsToggle:Z

    .line 958
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    const-string v0, "true"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 955
    iput-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mIsShow:Z

    goto :goto_0

    .line 956
    :cond_2
    const-string v0, "false"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mIsShow:Z

    goto :goto_0
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .prologue
    .line 962
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mIsToggle:Z

    if-eqz v0, :cond_1

    .line 963
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    invoke-virtual {v0}, Lmiui/app/screenelement/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    .line 966
    :goto_1
    return-void

    .line 963
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 965
    :cond_1
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mTargetElement:Lmiui/app/screenelement/elements/ScreenElement;

    iget-boolean v1, p0, Lmiui/app/screenelement/ActionCommand$VisibilityProperty;->mIsShow:Z

    invoke-virtual {v0, v1}, Lmiui/app/screenelement/elements/ScreenElement;->show(Z)V

    goto :goto_1
.end method
