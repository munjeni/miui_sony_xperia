.class public Lmiui/util/ResourceMapper;
.super Ljava/lang/Object;
.source "ResourceMapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resolveReference(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 8
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 9
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 10
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez v1, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method
