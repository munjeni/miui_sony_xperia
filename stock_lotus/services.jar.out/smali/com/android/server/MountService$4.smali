.class Lcom/android/server/MountService$4;
.super Ljava/lang/Object;
.source "MountService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$code:I

.field final synthetic val$cooked:[Ljava/lang/String;

.field final synthetic val$raw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 666
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$raw:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    iput p4, p0, Lcom/android/server/MountService$4;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 680
    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x25d

    if-ne v8, v9, :cond_1

    .line 686
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v9, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    aget-object v9, v9, v10

    iget-object v10, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    aget-object v10, v10, v11

    iget-object v11, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    const/4 v12, 0x7

    aget-object v11, v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    const/16 v13, 0xa

    aget-object v12, v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v8, v9, v10, v11, v12}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    .line 756
    :cond_0
    :goto_0
    return-void

    .line 689
    :cond_1
    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x276

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x277

    if-eq v8, v9, :cond_2

    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x278

    if-ne v8, v9, :cond_0

    .line 695
    :cond_2
    const/4 v0, 0x0

    .line 696
    .local v0, action:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    aget-object v4, v8, v10

    .line 697
    .local v4, label:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    aget-object v7, v8, v11

    .line 698
    .local v7, path:Ljava/lang/String;
    const/4 v5, -0x1

    .line 699
    .local v5, major:I
    const/4 v6, -0x1

    .line 702
    .local v6, minor:I
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v8, v8, v9

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/MountService$4;->val$cooked:[Ljava/lang/String;

    const/4 v11, 0x6

    aget-object v10, v10, v11

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 703
    .local v1, devComp:Ljava/lang/String;
    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 704
    .local v2, devTok:[Ljava/lang/String;
    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 705
    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 710
    .end local v1           #devComp:Ljava/lang/String;
    .end local v2           #devTok:[Ljava/lang/String;
    :goto_1
    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x276

    if-ne v8, v9, :cond_3

    .line 711
    new-instance v8, Lcom/android/server/MountService$4$1;

    invoke-direct {v8, p0, v7}, Lcom/android/server/MountService$4$1;-><init>(Lcom/android/server/MountService$4;Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/android/server/MountService$4$1;->start()V

    .line 752
    :goto_2
    if-eqz v0, :cond_0

    .line 753
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v0, v7}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :catch_0
    move-exception v3

    .line 707
    .local v3, ex:Ljava/lang/Exception;
    const-string v8, "MountService"

    const-string v9, "Failed to parse major/minor"

    invoke-static {v8, v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 724
    .end local v3           #ex:Ljava/lang/Exception;
    :cond_3
    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x277

    if-ne v8, v9, :cond_4

    .line 728
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v7}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "bad_removal"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 733
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v9, "unmounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v7, v9}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v9, "unmounted"

    #calls: Lcom/android/server/MountService;->sendStorageIntent(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v9, v7}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v9, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v7, v9}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v0, "android.intent.action.MEDIA_REMOVED"

    goto :goto_2

    .line 739
    :cond_4
    iget v8, p0, Lcom/android/server/MountService$4;->val$code:I

    const/16 v9, 0x278

    if-ne v8, v9, :cond_5

    .line 742
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v9, "unmounted"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v7, v9}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    .line 746
    iget-object v8, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v9, "bad_removal"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v8, v7, v9}, Lcom/android/server/MountService;->access$1800(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v0, "android.intent.action.MEDIA_BAD_REMOVAL"

    goto :goto_2

    .line 749
    :cond_5
    const-string v8, "MountService"

    const-string v9, "Unknown code {%d}"

    new-array v10, v12, [Ljava/lang/Object;

    iget v11, p0, Lcom/android/server/MountService$4;->val$code:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
