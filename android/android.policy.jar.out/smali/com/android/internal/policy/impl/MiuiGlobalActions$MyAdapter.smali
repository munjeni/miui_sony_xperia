.class Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MiuiGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MiuiGlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 305
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 308
    const/4 v1, 0x0

    .line 310
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 311
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    .line 313
    .local v0, action:Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 310
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$700(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 319
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 321
    .end local v0           #action:Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
    :cond_3
    return v1
.end method

.method public getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
    .locals 6
    .parameter "position"

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, filteredPos:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 338
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$500(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    .line 339
    .local v0, action:Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->showDuringKeyguard()Z

    move-result v3

    if-nez v3, :cond_1

    .line 337
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$700(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->showBeforeProvisioning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    :cond_2
    if-ne v1, p1, :cond_3

    .line 346
    return-object v0

    .line 348
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    .end local v0           #action:Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " out of range of showable actions"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", filtered count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", keyguardshowing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", provisioned="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z
    invoke-static {v5}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$700(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 360
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 364
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    .line 365
    .local v0, action:Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->this$0:Lcom/android/internal/policy/impl/MiuiGlobalActions;

    #getter for: Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-interface {v0, v1, p2, p3, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 326
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->isEnabled()Z

    move-result v0

    return v0
.end method
