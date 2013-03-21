.class public final Lcom/android/internal/app/LocaleAdapter;
.super Landroid/widget/BaseAdapter;
.source "LocaleAdapter.java"


# static fields
.field public static final INVALID_POSITION:I = -0x1


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private final mLocales:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/LocalePicker$LocaleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p2, locales:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/app/LocalePicker$LocaleInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 46
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/android/internal/app/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    .line 48
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 49
    .local v1, l:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v2, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    .end local v1           #l:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocaleAdapter;->getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 85
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->type:I

    return v0
.end method

.method public getLocale(I)Ljava/util/Locale;
    .locals 1
    .parameter "position"

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocaleAdapter;->getItem(I)Lcom/android/internal/app/LocalePicker$LocaleInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getPosition(Ljava/util/Locale;)I
    .locals 5
    .parameter "locale"

    .prologue
    const/4 v3, -0x1

    .line 73
    const/4 v2, 0x0

    .line 74
    .local v2, position:I
    if-nez p1, :cond_1

    .line 81
    :cond_0
    :goto_0
    return v3

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 76
    .local v1, l:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    iget-object v4, v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;->locale:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v3, v2

    .line 77
    goto :goto_0

    .line 79
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 107
    iget-object v2, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 108
    .local v0, record:Lcom/android/internal/app/LocalePicker$LocaleInfo;
    if-nez p2, :cond_0

    .line 109
    iget-object v2, p0, Lcom/android/internal/app/LocaleAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v3, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->resourceId:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 111
    :cond_0
    iget v2, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->type:I

    packed-switch v2, :pswitch_data_0

    .line 122
    :goto_0
    return-object p2

    .line 113
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocaleAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    move-object v1, p2

    .line 116
    check-cast v1, Landroid/widget/CheckedTextView;

    .line 117
    .local v1, v:Landroid/widget/CheckedTextView;
    iget-object v2, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    invoke-virtual {p0, p1}, Lcom/android/internal/app/LocaleAdapter;->isEnabled(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/LocaleAdapter;->mLocales:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    iget-boolean v0, v0, Lcom/android/internal/app/LocalePicker$LocaleInfo;->enabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
