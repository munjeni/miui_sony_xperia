.class Lmiui/util/GifDecoder$GifFrame;
.super Ljava/lang/Object;
.source "GifDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/GifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GifFrame"
.end annotation


# instance fields
.field public delay:I

.field public image:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 0
    .parameter "im"
    .parameter "del"

    .prologue
    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    iput-object p1, p0, Lmiui/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    .line 149
    iput p2, p0, Lmiui/util/GifDecoder$GifFrame;->delay:I

    .line 150
    return-void
.end method


# virtual methods
.method public recycle()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lmiui/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lmiui/util/GifDecoder$GifFrame;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 156
    :cond_0
    return-void
.end method
