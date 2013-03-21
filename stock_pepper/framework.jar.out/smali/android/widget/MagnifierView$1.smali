.class Landroid/widget/MagnifierView$1;
.super Ljava/lang/Object;
.source "MagnifierView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MagnifierView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MagnifierView;


# direct methods
.method constructor <init>(Landroid/widget/MagnifierView;)V
    .locals 0
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const v7, 0x3c23d70a

    const v6, 0x3a83126f

    .line 319
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;
    invoke-static {v2}, Landroid/widget/MagnifierView;->access$000(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    .line 321
    .local v0, isAtRest:Z
    if-nez v0, :cond_0

    .line 322
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;
    invoke-static {v2}, Landroid/widget/MagnifierView;->access$000(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/SpringDynamics;->update(J)V

    .line 323
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mView:Landroid/view/View;
    invoke-static {v2}, Landroid/widget/MagnifierView;->access$200(Landroid/widget/MagnifierView;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mLocationInWindow:[I
    invoke-static {v3}, Landroid/widget/MagnifierView;->access$100(Landroid/widget/MagnifierView;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 324
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;
    invoke-static {v2}, Landroid/widget/MagnifierView;->access$000(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SpringDynamics;->getPosition()F

    move-result v2

    iget-object v3, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mWidth:I
    invoke-static {v3}, Landroid/widget/MagnifierView;->access$300(Landroid/widget/MagnifierView;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 325
    .local v1, leftAndRightOffset:I
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    iget-object v3, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mCenter:Landroid/graphics/Point;
    invoke-static {v3}, Landroid/widget/MagnifierView;->access$400(Landroid/widget/MagnifierView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v1

    iget-object v4, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mLocationInWindow:[I
    invoke-static {v4}, Landroid/widget/MagnifierView;->access$100(Landroid/widget/MagnifierView;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    invoke-virtual {v4}, Landroid/widget/MagnifierView;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/MagnifierView;->offsetLeftAndRight(I)V

    .line 328
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    #getter for: Landroid/widget/MagnifierView;->mOffsetDynX:Landroid/widget/SpringDynamics;
    invoke-static {v2}, Landroid/widget/MagnifierView;->access$000(Landroid/widget/MagnifierView;)Landroid/widget/SpringDynamics;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Landroid/widget/SpringDynamics;->isAtRest(FF)Z

    move-result v0

    .line 329
    if-nez v0, :cond_0

    .line 330
    iget-object v2, p0, Landroid/widget/MagnifierView$1;->this$0:Landroid/widget/MagnifierView;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, p0, v3, v4}, Landroid/widget/MagnifierView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 333
    .end local v1           #leftAndRightOffset:I
    :cond_0
    return-void
.end method
