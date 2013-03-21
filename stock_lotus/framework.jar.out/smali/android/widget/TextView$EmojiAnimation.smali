.class Landroid/widget/TextView$EmojiAnimation;
.super Landroid/os/Handler;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmojiAnimation"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final EMOJI_DELAY_TIME:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MAX_EMOJI:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MIN_EMOJI:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14


# instance fields
.field private mLastUpdateTime:J

.field private mShowDefaultImage:Z

.field private mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 5240
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5241
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/widget/TextView$EmojiAnimation;->MIN_EMOJI:I

    .line 5242
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/widget/TextView$EmojiAnimation;->MAX_EMOJI:I

    .line 5243
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getAnimationDelayTime()I

    move-result v0

    sput v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    .line 5249
    :goto_0
    return-void

    .line 5245
    :cond_0
    sput v1, Landroid/widget/TextView$EmojiAnimation;->MIN_EMOJI:I

    .line 5246
    sput v1, Landroid/widget/TextView$EmojiAnimation;->MAX_EMOJI:I

    .line 5247
    sput v1, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 5261
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 5262
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    .line 5263
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    .line 5264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    .line 5265
    return-void
.end method

.method private containsAnimatedEmoji(Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "text"

    .prologue
    .line 5336
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 5337
    .local v1, end:I
    const/4 v2, 0x0

    .local v2, i:I
    move v3, v2

    .line 5338
    .end local v2           #i:I
    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 5339
    add-int/lit8 v2, v3, 0x1

    .end local v3           #i:I
    .restart local v2       #i:I
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 5340
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5341
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .restart local v3       #i:I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-static {v0, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v4

    .line 5342
    .local v4, pua:I
    sget v5, Landroid/widget/TextView$EmojiAnimation;->MIN_EMOJI:I

    if-lt v4, v5, :cond_0

    sget v5, Landroid/widget/TextView$EmojiAnimation;->MAX_EMOJI:I

    if-gt v4, v5, :cond_0

    .line 5343
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/emoji/EmojiFactory;->isAnimatedEmoji(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5344
    const/4 v5, 0x1

    move v2, v3

    .line 5349
    .end local v0           #c:C
    .end local v3           #i:I
    .end local v4           #pua:I
    .restart local v2       #i:I
    :goto_1
    return v5

    .end local v2           #i:I
    .restart local v0       #c:C
    .restart local v3       #i:I
    .restart local v4       #pua:I
    :cond_0
    move v2, v3

    .end local v3           #i:I
    .end local v4           #pua:I
    .restart local v2       #i:I
    :cond_1
    move v3, v2

    .line 5348
    .end local v2           #i:I
    .restart local v3       #i:I
    goto :goto_0

    .line 5349
    .end local v0           #c:C
    :cond_2
    const/4 v5, 0x0

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_1
.end method


# virtual methods
.method postDelayed()V
    .locals 4

    .prologue
    .line 5309
    sget v0, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    if-lez v0, :cond_0

    .line 5310
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget v2, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Landroid/widget/TextView$EmojiAnimation;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 5312
    :cond_0
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 5272
    invoke-virtual {p0, p0}, Landroid/widget/TextView$EmojiAnimation;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5274
    iget-object v4, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5275
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_0

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v4

    if-nez v4, :cond_1

    .line 5303
    :cond_0
    :goto_0
    return-void

    .line 5279
    :cond_1
    iget-object v4, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/TextView$EmojiAnimation;->containsAnimatedEmoji(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5283
    invoke-virtual {v3}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5284
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    .line 5285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5286
    .local v0, currentTime:J
    iget-wide v4, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 5287
    iput-wide v0, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    .line 5289
    :cond_2
    iget-wide v4, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    sub-long v4, v0, v4

    sget v6, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_3

    .line 5290
    iput-wide v0, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    .line 5291
    sget v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v4, v4

    div-long v4, v0, v4

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    .line 5292
    .local v2, imageNumber:I
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v4

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/emoji/EmojiFactory;->setAnimationImageNumber(ILandroid/graphics/Canvas;)V

    .line 5293
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 5295
    .end local v2           #imageNumber:I
    :cond_3
    iget-wide v4, p0, Landroid/widget/TextView$EmojiAnimation;->mLastUpdateTime:J

    sget v6, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {p0, p0, v4, v5}, Landroid/widget/TextView$EmojiAnimation;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 5297
    .end local v0           #currentTime:J
    :cond_4
    iget-boolean v4, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    if-nez v4, :cond_0

    .line 5298
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView$EmojiAnimation;->mShowDefaultImage:Z

    .line 5299
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v4

    const/4 v5, -0x1

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/emoji/EmojiFactory;->setAnimationImageNumber(ILandroid/graphics/Canvas;)V

    .line 5300
    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method setStartImageNumberIfNeeded()V
    .locals 8

    .prologue
    .line 5319
    iget-object v4, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5320
    iget-object v4, p0, Landroid/widget/TextView$EmojiAnimation;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 5321
    .local v3, tv:Landroid/widget/TextView;
    if-eqz v3, :cond_0

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/widget/TextView;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5322
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5323
    .local v0, currentTime:J
    sget v4, Landroid/widget/TextView$EmojiAnimation;->EMOJI_DELAY_TIME:I

    int-to-long v4, v4

    div-long v4, v0, v4

    const-wide/32 v6, 0x7fffffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    .line 5325
    .local v2, imageNumber:I
    invoke-static {}, Landroid/widget/TextView;->access$300()Landroid/emoji/EmojiFactory;

    move-result-object v4

    #getter for: Landroid/widget/TextView;->mCanvas:Landroid/graphics/Canvas;
    invoke-static {v3}, Landroid/widget/TextView;->access$400(Landroid/widget/TextView;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/emoji/EmojiFactory;->setAnimationImageNumber(ILandroid/graphics/Canvas;)V

    .line 5328
    .end local v0           #currentTime:J
    .end local v2           #imageNumber:I
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method
