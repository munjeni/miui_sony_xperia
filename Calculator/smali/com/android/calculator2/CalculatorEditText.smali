.class public Lcom/android/calculator2/CalculatorEditText;
.super Landroid/widget/EditText;
.source "CalculatorEditText.java"


# instance fields
.field private sOperators:[Ljava/lang/String;

.field private sReplacementTable:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const v0, 0x80001

    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->setInputType(I)V

    .line 43
    return-void
.end method

.method private declared-synchronized initializeReplacementTable()V
    .locals 9

    .prologue
    .line 96
    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;

    if-nez v8, :cond_1

    .line 97
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v1

    .line 98
    .local v1, builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 99
    .local v7, res:Landroid/content/res/Resources;
    const v8, 0x7f050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calculator2/CalculatorEditText;->sOperators:[Ljava/lang/String;

    .line 100
    const v8, 0x7f050005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, descs:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 102
    .local v6, pos:I
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText;->sOperators:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v4, v0, v3

    .line 103
    .local v4, key:Ljava/lang/String;
    aget-object v8, v2, v6

    invoke-virtual {v1, v4, v8}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    .line 104
    add-int/lit8 v6, v6, 0x1

    .line 102
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v8

    iput-object v8, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #builder:Lcom/google/common/collect/ImmutableMap$Builder;,"Lcom/google/common/collect/ImmutableMap$Builder<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #descs:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #pos:I
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    monitor-exit p0

    return-void

    .line 96
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method private mathParse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "plainText"

    .prologue
    .line 82
    move-object v4, p1

    .line 83
    .local v4, parsedText:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/android/calculator2/CalculatorEditText;->initializeReplacementTable()V

    .line 86
    iget-object v0, p0, Lcom/android/calculator2/CalculatorEditText;->sOperators:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 87
    .local v3, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    iget-object v5, p0, Lcom/android/calculator2/CalculatorEditText;->sReplacementTable:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v5, v3}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 86
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #operator:Ljava/lang/String;
    :cond_1
    return-object v4
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/calculator2/CalculatorEditText;->mathParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, mathText:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 65
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/widget/EditText;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/calculator2/CalculatorEditText;->mathParse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 74
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 79
    return-void
.end method

.method public performLongClick()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 48
    .local v1, text:Landroid/text/Editable;
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 49
    .local v2, textLength:I
    invoke-virtual {p0, v5, v2}, Lcom/android/calculator2/CalculatorEditText;->setSelection(II)V

    .line 50
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "clipboard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 52
    .local v0, clipboard:Landroid/content/ClipboardManager;
    const/4 v3, 0x0

    invoke-static {v3, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/calculator2/CalculatorEditText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a002a

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 54
    invoke-virtual {p0, v2}, Lcom/android/calculator2/CalculatorEditText;->setSelection(I)V

    .line 55
    const/4 v3, 0x1

    return v3
.end method
