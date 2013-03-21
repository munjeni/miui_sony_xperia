.class public Lcom/android/internal/app/LocalePicker;
.super Landroid/app/ListFragment;
.source "LocalePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/LocalePicker$LocaleInfo;,
        Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_LOCALE:Ljava/lang/String; = "default-locale"

.field private static final DEFAULT_LOCALE_SORT_ORDER:Ljava/lang/String; = "locale-sortorder"

.field protected static final LOCALE_STRING_LENGTH:I = 0x5

.field protected static final PROPERTY_COUNTRY:Ljava/lang/String; = "ro.product.locale.region"

.field protected static final PROPERTY_LANGUAGE:Ljava/lang/String; = "ro.product.locale.language"

.field public static final SORT_SINGLE:Ljava/lang/String; = "single"

.field public static final SORT_TOP:Ljava/lang/String; = "top"

.field protected static final STATE_CUSTOMIZED_LOCALE_SINGLE:I = 0x3

.field protected static final STATE_CUSTOMIZED_LOCALE_TOP:I = 0x4

.field private static final STATE_DEFAULT_LOCALE:I = 0x2

.field protected static final STATE_SIMCARD_COUNTRY:I = 0x0

.field protected static final STATE_SW_LOCALE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalePicker"


# instance fields
.field private mAdapter:Lcom/android/internal/app/LocaleAdapter;

.field private mCustomizedCountry:Ljava/lang/String;

.field private mCustomizedLanguage:Ljava/lang/String;

.field protected mDefaultSimCountry:Ljava/lang/String;

.field protected mDefaultSwCountry:Ljava/lang/String;

.field protected mDefaultSwLanguage:Ljava/lang/String;

.field mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

.field private mSpecialLocaleCodes:[Ljava/lang/String;

.field private mSpecialLocaleLanguageCodes:[Ljava/lang/String;

.field private mSpecialLocaleLanguageNames:[Ljava/lang/String;

.field private mSpecialLocaleNames:[Ljava/lang/String;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method

.method private buildLanguageList([Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .parameter "locales"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, localeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    const/4 v9, 0x0

    .local v9, isSwLocaleValid:Z
    const/4 v8, 0x0

    .local v8, isSimCountryValid:Z
    const/16 v17, 0x0

    .local v17, topLanguageFound:Z
    move-object/from16 v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v12, v2

    .local v12, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v12, :cond_5

    aget-object v16, v2, v7

    .local v16, s:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocalePicker;->getLanguagePart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, language:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/app/LocalePicker;->getCountryPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, country:Ljava/lang/String;
    new-instance v10, Ljava/util/Locale;

    invoke-direct {v10, v11, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v10, l:Ljava/util/Locale;
    new-instance v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v13, v0, v10}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .local v13, loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v15, p:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v15}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v15, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    .end local v15           #p:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_0
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/LocalePicker;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v17, 0x1

    :cond_1
    if-nez v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker;->mDefaultSwLanguage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker;->mDefaultSwCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    const/4 v9, 0x1

    :cond_2
    :goto_1
    if-nez v8, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker;->mDefaultSimCountry:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .end local v3           #country:Ljava/lang/String;
    .end local v10           #l:Ljava/util/Locale;
    .end local v11           #language:Ljava/lang/String;
    .end local v13           #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .restart local v3       #country:Ljava/lang/String;
    .restart local v10       #l:Ljava/util/Locale;
    .restart local v11       #language:Ljava/lang/String;
    .restart local v13       #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .end local v3           #country:Ljava/lang/String;
    .end local v10           #l:Ljava/util/Locale;
    .end local v11           #language:Ljava/lang/String;
    .end local v13           #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .end local v16           #s:Ljava/lang/String;
    :cond_5
    if-nez v17, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v8}, Lcom/android/internal/app/LocalePicker;->changeStateWhenNoDefaultLocale(ZZ)V

    :cond_6
    invoke-static {v14}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v5, 0x0

    .local v5, divider:I
    const/4 v4, 0x0

    .local v4, defaultLocale:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v6, v18, -0x1

    .local v6, i:I
    :cond_7
    :goto_2
    if-lt v6, v5, :cond_9

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .restart local v13       #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v10

    .restart local v10       #l:Ljava/util/Locale;
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/internal/app/LocalePicker;->isDefaultLocale(Ljava/util/Locale;)Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    add-int/lit8 v6, v6, -0x1

    if-nez v4, :cond_7

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    move-object v4, v13

    goto :goto_2

    .end local v10           #l:Ljava/util/Locale;
    .end local v13           #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_9
    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/app/LocalePicker;->mState:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    new-instance v10, Ljava/util/Locale;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker;->mCustomizedLanguage:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v10, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v10       #l:Ljava/util/Locale;
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_a

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .restart local v13       #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    invoke-virtual {v13}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .end local v10           #l:Ljava/util/Locale;
    .end local v13           #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_a
    new-instance v18, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-direct/range {v18 .. v18}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v14, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    if-eqz v4, :cond_b

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v14, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_b
    return-object v14

    .restart local v10       #l:Ljava/util/Locale;
    .restart local v13       #loc:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method private changeStateWhenNoDefaultLocale(ZZ)V
    .locals 3
    .parameter "isSwLocaleValid"
    .parameter "isSimCountryValid"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    iget v0, p0, Lcom/android/internal/app/LocalePicker;->mState:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "LocalePicker"

    const-string v1, "Error, wrong state. Defaulting to resolve default locale"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    :goto_0
    return-void

    :pswitch_1
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v2}, Lcom/android/internal/app/LocalePicker;->setState(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static constructAdapter(Landroid/content/Context;)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const v0, 0x1090069

    const v1, 0x102016f

    invoke-static {p0, v0, v1}, Lcom/android/internal/app/LocalePicker;->constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static constructAdapter(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;
    .locals 22
    .parameter "context"
    .parameter "layoutId"
    .parameter "fieldId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .local v16, resources:Landroid/content/res/Resources;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v13

    .local v13, locales:[Ljava/lang/String;
    const v20, 0x107000b

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v18

    .local v18, specialLocaleCodes:[Ljava/lang/String;
    const v20, 0x107000c

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v19

    .local v19, specialLocaleNames:[Ljava/lang/String;
    invoke-static {v13}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v14, v13

    .local v14, origSize:I
    new-array v15, v14, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v15, preprocess:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v6, 0x0

    .local v6, finalSize:I
    const/4 v8, 0x0

    .local v8, i:I
    move v7, v6

    .end local v6           #finalSize:I
    .local v7, finalSize:I
    :goto_0
    if-ge v8, v14, :cond_3

    aget-object v17, v13, v8

    .local v17, s:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, len:I
    const/16 v20, 0x5

    move/from16 v0, v20

    if-ne v11, v0, :cond_5

    const/16 v20, 0x0

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .local v10, language:Ljava/lang/String;
    const/16 v20, 0x3

    const/16 v21, 0x5

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, country:Ljava/lang/String;
    new-instance v9, Ljava/util/Locale;

    invoke-direct {v9, v10, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v9, l:Ljava/util/Locale;
    if-nez v7, :cond_0

    add-int/lit8 v6, v7, 0x1

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    new-instance v20, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v15, v7

    .end local v4           #country:Ljava/lang/String;
    .end local v9           #l:Ljava/util/Locale;
    .end local v10           #language:Ljava/lang/String;
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v7, v6

    .end local v6           #finalSize:I
    .restart local v7       #finalSize:I
    goto :goto_0

    .restart local v4       #country:Ljava/lang/String;
    .restart local v9       #l:Ljava/util/Locale;
    .restart local v10       #language:Ljava/lang/String;
    :cond_0
    add-int/lit8 v20, v7, -0x1

    aget-object v20, v15, v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1

    add-int/lit8 v20, v7, -0x1

    aget-object v20, v15, v20

    add-int/lit8 v21, v7, -0x1

    aget-object v21, v15, v21

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    add-int/lit8 v6, v7, 0x1

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    new-instance v20, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v9, v0, v1}, Lcom/android/internal/app/LocalePicker;->getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v9}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v15, v7

    goto :goto_1

    .end local v6           #finalSize:I
    .restart local v7       #finalSize:I
    :cond_1
    const-string v20, "zz_ZZ"

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-string v5, "Pseudo..."

    .local v5, displayName:Ljava/lang/String;
    :goto_2
    add-int/lit8 v6, v7, 0x1

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    new-instance v20, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-object/from16 v0, v20

    invoke-direct {v0, v5, v9}, Lcom/android/internal/app/LocalePicker$LocaleInfo;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v20, v15, v7

    goto :goto_1

    .end local v5           #displayName:Ljava/lang/String;
    .end local v6           #finalSize:I
    .restart local v7       #finalSize:I
    :cond_2
    invoke-virtual {v9, v9}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/internal/app/LocalePicker;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #displayName:Ljava/lang/String;
    goto :goto_2

    .end local v4           #country:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    .end local v9           #l:Ljava/util/Locale;
    .end local v10           #language:Ljava/lang/String;
    .end local v11           #len:I
    .end local v17           #s:Ljava/lang/String;
    :cond_3
    new-array v12, v7, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .local v12, localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    const/4 v8, 0x0

    :goto_3
    if-ge v8, v7, :cond_4

    aget-object v20, v15, v8

    aput-object v20, v12, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v20, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-object v20

    .end local v12           #localeInfos:[Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .restart local v11       #len:I
    .restart local v17       #s:Ljava/lang/String;
    :cond_5
    move v6, v7

    .end local v7           #finalSize:I
    .restart local v6       #finalSize:I
    goto/16 :goto_1
.end method

.method private getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleLanguageCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleLanguageCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleLanguageNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayLanguage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .parameter "l"

    .prologue
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static getDisplayName(Ljava/util/Locale;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "l"
    .parameter "specialLocaleCodes"
    .parameter "specialLocaleNames"

    .prologue
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, code:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, p2, v1

    :goto_1
    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private isDefaultLocale(Ljava/util/Locale;)Z
    .locals 5
    .parameter "locale"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, isDefaultLocale:Z
    if-eqz p1, :cond_0

    iget v3, p0, Lcom/android/internal/app/LocalePicker;->mState:I

    packed-switch v3, :pswitch_data_0

    const-string v1, "LocalePicker"

    const-string v2, "Error, unsupported state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mCustomizedLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mDefaultSimCountry:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mDefaultSwCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/app/LocalePicker;->mDefaultSwLanguage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_2

    :pswitch_4
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static updateLocale(Ljava/util/Locale;)V
    .locals 3
    .parameter "locale"

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, config:Landroid/content/res/Configuration;
    iput-object p0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    const-string v2, "com.android.providers.settings"

    invoke-static {v2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method protected final getCountryPart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x3

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getLanguagePart(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListPositionOfLocale(Ljava/util/Locale;)I
    .locals 1
    .parameter "l"

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Lcom/android/internal/app/LocaleAdapter;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/LocaleAdapter;->getPosition(Ljava/util/Locale;)I

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleLanguageCodes:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleLanguageNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleCodes:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mSpecialLocaleNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->setUpDefaultLocales()V

    new-instance v0, Lcom/android/internal/app/LocaleAdapter;

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/app/LocalePicker;->buildLanguageList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/LocaleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Lcom/android/internal/app/LocaleAdapter;

    iget-object v0, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Lcom/android/internal/app/LocaleAdapter;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/LocalePicker;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, p3, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Lcom/android/internal/app/LocaleAdapter;

    invoke-virtual {v1, p3}, Lcom/android/internal/app/LocaleAdapter;->getLocale(I)Ljava/util/Locale;

    move-result-object v0

    .local v0, locale:Ljava/util/Locale;
    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    invoke-interface {v1, v0}, Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;->onLocaleSelected(Ljava/util/Locale;)V

    .end local v0           #locale:Ljava/util/Locale;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    iget-object v1, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Lcom/android/internal/app/LocaleAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/app/LocaleAdapter;->getPosition(Ljava/util/Locale;)I

    move-result v0

    .local v0, position:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/LocalePicker;->mAdapter:Lcom/android/internal/app/LocaleAdapter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/app/LocaleAdapter;->getPosition(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/LocalePicker;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->requestFocus()Z

    return-void
.end method

.method protected final setCustomizedCountry(Ljava/lang/String;)V
    .locals 0
    .parameter "customizedCountry"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mCustomizedCountry:Ljava/lang/String;

    return-void
.end method

.method protected final setCustomizedLanguage(Ljava/lang/String;)V
    .locals 0
    .parameter "customizedLanguage"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mCustomizedLanguage:Ljava/lang/String;

    return-void
.end method

.method public setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/LocalePicker;->mListener:Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;

    return-void
.end method

.method protected setState(I)V
    .locals 0
    .parameter "state"

    .prologue
    iput p1, p0, Lcom/android/internal/app/LocalePicker;->mState:I

    return-void
.end method

.method protected setUpDefaultLocales()V
    .locals 0

    .prologue
    return-void
.end method
