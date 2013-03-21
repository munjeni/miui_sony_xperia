.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 6271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "res"
    .parameter "type"
    .parameter "label"

    .prologue
    .line 6330
    if-nez p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6334
    .end local p2
    :goto_0
    return-object p2

    .line 6333
    .restart local p2
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 6334
    .local v0, labelRes:I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    goto :goto_0
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 6302
    packed-switch p0, :pswitch_data_0

    .line 6319
    const v0, 0x1040316

    :goto_0
    return v0

    .line 6303
    :pswitch_0
    const v0, 0x1040318

    goto :goto_0

    .line 6304
    :pswitch_1
    const v0, 0x1040319

    goto :goto_0

    .line 6305
    :pswitch_2
    const v0, 0x104031a

    goto :goto_0

    .line 6307
    :pswitch_3
    const v0, 0x104031b

    goto :goto_0

    .line 6308
    :pswitch_4
    const v0, 0x104031c

    goto :goto_0

    .line 6309
    :pswitch_5
    const v0, 0x104031d

    goto :goto_0

    .line 6310
    :pswitch_6
    const v0, 0x104031e

    goto :goto_0

    .line 6311
    :pswitch_7
    const v0, 0x104031f

    goto :goto_0

    .line 6312
    :pswitch_8
    const v0, 0x1040320

    goto :goto_0

    .line 6313
    :pswitch_9
    const v0, 0x1040321

    goto :goto_0

    .line 6315
    :pswitch_a
    const v0, 0x1040322

    goto :goto_0

    .line 6316
    :pswitch_b
    const v0, 0x1040323

    goto :goto_0

    .line 6317
    :pswitch_c
    const v0, 0x1040324

    goto :goto_0

    .line 6318
    :pswitch_d
    const v0, 0x1040325

    goto :goto_0

    .line 6302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
