.class Lcom/android/server/AssetRedirectionManagerService$1;
.super Ljava/lang/Object;
.source "AssetRedirectionManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AssetRedirectionManagerService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AssetRedirectionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AssetRedirectionManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/AssetRedirectionManagerService$1;->this$0:Lcom/android/server/AssetRedirectionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 215
    iget-object v1, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 216
    .local v0, comp:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 223
    :goto_0
    return v1

    .line 219
    :cond_0
    iget-object v1, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->themeId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 220
    if-eqz v0, :cond_1

    move v1, v0

    .line 221
    goto :goto_0

    .line 223
    :cond_1
    iget-object v1, p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    check-cast p1, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;

    .end local p1
    check-cast p2, Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AssetRedirectionManagerService$1;->compare(Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;Lcom/android/server/AssetRedirectionManagerService$RedirectionKey;)I

    move-result v0

    return v0
.end method
