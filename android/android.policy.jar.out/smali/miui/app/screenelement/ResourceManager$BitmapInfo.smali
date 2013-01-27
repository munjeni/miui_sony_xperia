.class public Lmiui/app/screenelement/ResourceManager$BitmapInfo;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ResourceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitmapInfo"
.end annotation


# instance fields
.field public final mBitmap:Landroid/graphics/Bitmap;

.field public mLastVisitTime:J

.field public final mPadding:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "bm"
    .parameter "padding"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 35
    iput-object p2, p0, Lmiui/app/screenelement/ResourceManager$BitmapInfo;->mPadding:Landroid/graphics/Rect;

    .line 36
    return-void
.end method
