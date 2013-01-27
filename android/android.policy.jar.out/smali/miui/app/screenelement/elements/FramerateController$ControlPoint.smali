.class public Lmiui/app/screenelement/elements/FramerateController$ControlPoint;
.super Ljava/lang/Object;
.source "FramerateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/FramerateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControlPoint"
.end annotation


# instance fields
.field public mFramerate:I

.field public mTime:J


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2
    .parameter "node"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmiui/app/screenelement/ScreenElementLoadException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string v0, "time"

    invoke-static {p1, v0}, Lmiui/app/screenelement/util/Utils;->getAttrAsLongThrows(Lorg/w3c/dom/Element;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mTime:J

    .line 33
    const-string v0, "frameRate"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Lmiui/app/screenelement/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/elements/FramerateController$ControlPoint;->mFramerate:I

    .line 34
    return-void
.end method
