.class public Lmiui/app/screenelement/FramerateTokenList$FramerateToken;
.super Ljava/lang/Object;
.source "FramerateTokenList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/FramerateTokenList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FramerateToken"
.end annotation


# instance fields
.field public mFramerate:F

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lmiui/app/screenelement/FramerateTokenList;


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/FramerateTokenList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 15
    iput-object p1, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->this$0:Lmiui/app/screenelement/FramerateTokenList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p2, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public getFramerate()F
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->mFramerate:F

    return v0
.end method

.method public requestFramerate(F)V
    .locals 3
    .parameter "f"

    .prologue
    .line 24
    iget v0, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->mFramerate:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 25
    const-string v0, "FramerateTokenList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestFramerate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iput p1, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->mFramerate:F

    .line 27
    iget-object v0, p0, Lmiui/app/screenelement/FramerateTokenList$FramerateToken;->this$0:Lmiui/app/screenelement/FramerateTokenList;

    #calls: Lmiui/app/screenelement/FramerateTokenList;->onChange()V
    invoke-static {v0}, Lmiui/app/screenelement/FramerateTokenList;->access$000(Lmiui/app/screenelement/FramerateTokenList;)V

    .line 29
    :cond_0
    return-void
.end method
