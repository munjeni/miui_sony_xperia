.class public Lmiui/text/util/EmojiSmileys;
.super Ljava/lang/Object;
.source "EmojiSmileys.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;
    }
.end annotation


# static fields
.field private static final EMOJI_CODE_FIRST:I = 0xe001

.field private static final EMOJI_CODE_LAST:I = 0xe537

.field private static final EMOJI_SIZE_PX:I = 0x30

.field private static final mInitialized:[Z

.field private static final mSmileyBitmaps:[Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x537

    .line 22
    new-array v0, v1, [Z

    sput-object v0, Lmiui/text/util/EmojiSmileys;->mInitialized:[Z

    .line 23
    new-array v0, v1, [Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    sput-object v0, Lmiui/text/util/EmojiSmileys;->mSmileyBitmaps:[Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method private static getDrawableByResName(Ljava/lang/String;)Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;
    .locals 5
    .parameter "resName"

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v2, 0x0

    .line 53
    .local v2, resId:I
    :try_start_0
    const-class v4, Lcom/miui/internal/R$drawable;

    invoke-virtual {v4, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 54
    .local v1, f:Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v2

    .line 64
    new-instance v3, Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    invoke-direct {v3, v2}, Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;-><init>(I)V

    .end local v1           #f:Ljava/lang/reflect/Field;
    :goto_0
    return-object v3

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Ljava/lang/SecurityException;
    goto :goto_0

    .line 57
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/NoSuchFieldException;
    goto :goto_0

    .line 59
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/IllegalAccessException;
    goto :goto_0
.end method

.method public static getEmojiBitmap(I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "c"

    .prologue
    .line 43
    invoke-static {p0}, Lmiui/text/util/EmojiSmileys;->getEmojiDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    .line 44
    .local v0, d:Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;
    if-nez v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .line 47
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public static getEmojiDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "c"

    .prologue
    const v4, 0xe001

    const/4 v3, 0x1

    .line 30
    if-lt p0, v4, :cond_1

    const v2, 0xe537

    if-gt p0, v2, :cond_1

    .line 31
    sub-int v0, p0, v4

    .line 32
    .local v0, index:I
    sget-object v2, Lmiui/text/util/EmojiSmileys;->mInitialized:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 33
    sget-object v2, Lmiui/text/util/EmojiSmileys;->mInitialized:[Z

    aput-boolean v3, v2, v0

    .line 34
    const-string v2, "emoji_%x"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, resName:Ljava/lang/String;
    sget-object v2, Lmiui/text/util/EmojiSmileys;->mSmileyBitmaps:[Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    invoke-static {v1}, Lmiui/text/util/EmojiSmileys;->getDrawableByResName(Ljava/lang/String;)Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    move-result-object v3

    aput-object v3, v2, v0

    .line 37
    .end local v1           #resName:Ljava/lang/String;
    :cond_0
    sget-object v2, Lmiui/text/util/EmojiSmileys;->mSmileyBitmaps:[Lmiui/text/util/EmojiSmileys$LazySmileyDrawable;

    aget-object v2, v2, v0

    .line 39
    .end local v0           #index:I
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEmoji(I)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 26
    invoke-static {p0}, Lmiui/text/util/EmojiSmileys;->getEmojiDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
