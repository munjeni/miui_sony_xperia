.class final enum Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;
.super Ljava/lang/Enum;
.source "DynamicMemoryManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DynamicMemoryManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DMM_MEM_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

.field public static final enum ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

.field public static final enum DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    new-instance v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->ACTIVE:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->DISABLED:Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->$VALUES:[Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->$VALUES:[Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    invoke-virtual {v0}, [Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/DynamicMemoryManagerService$DMM_MEM_STATE;

    return-object v0
.end method
