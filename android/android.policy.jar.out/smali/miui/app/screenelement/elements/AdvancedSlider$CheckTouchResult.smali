.class Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckTouchResult"
.end annotation


# instance fields
.field public endPoint:Lmiui/app/screenelement/elements/AdvancedSlider$EndPoint;

.field public reached:Z

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 981
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lmiui/app/screenelement/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 981
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$CheckTouchResult;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;)V

    return-void
.end method
