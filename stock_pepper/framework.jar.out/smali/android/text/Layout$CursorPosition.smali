.class public final Landroid/text/Layout$CursorPosition;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CursorPosition"
.end annotation


# instance fields
.field public leadingIndex:I

.field public offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLeadingAbsPos()I
    .locals 1

    .prologue
    .line 2178
    iget v0, p0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    return v0
.end method

.method public getLogicalIndex()I
    .locals 1

    .prologue
    .line 2186
    invoke-virtual {p0}, Landroid/text/Layout$CursorPosition;->getTrailingAbsPos()I

    move-result v0

    return v0
.end method

.method public getTrailingAbsPos()I
    .locals 2

    .prologue
    .line 2182
    iget v0, p0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    iget v1, p0, Landroid/text/Layout$CursorPosition;->offset:I

    add-int/2addr v0, v1

    return v0
.end method

.method public setAbsPositions(II)V
    .locals 2
    .parameter "leading"
    .parameter "trailing"

    .prologue
    .line 2190
    iput p1, p0, Landroid/text/Layout$CursorPosition;->leadingIndex:I

    .line 2192
    sub-int v0, p2, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/text/Layout$CursorPosition;->offset:I

    .line 2193
    return-void
.end method
