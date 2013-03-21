.class public final Landroid/graphics/BlockLayout$CaretPosition;
.super Ljava/lang/Object;
.source "BlockLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/BlockLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CaretPosition"
.end annotation


# instance fields
.field public leadingIndex:I

.field public trailingOffset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharacterIndex()I
    .locals 2

    .prologue
    .line 52
    iget v0, p0, Landroid/graphics/BlockLayout$CaretPosition;->leadingIndex:I

    iget v1, p0, Landroid/graphics/BlockLayout$CaretPosition;->trailingOffset:I

    add-int/2addr v0, v1

    return v0
.end method
