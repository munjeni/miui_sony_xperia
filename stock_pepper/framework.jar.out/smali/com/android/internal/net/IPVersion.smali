.class public final enum Lcom/android/internal/net/IPVersion;
.super Ljava/lang/Enum;
.source "IPVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/net/IPVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/net/IPVersion;

.field public static final enum INET:Lcom/android/internal/net/IPVersion;

.field public static final enum INET6:Lcom/android/internal/net/IPVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/android/internal/net/IPVersion;

    const-string v1, "INET"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    new-instance v0, Lcom/android/internal/net/IPVersion;

    const-string v1, "INET6"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/net/IPVersion;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/net/IPVersion;

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET:Lcom/android/internal/net/IPVersion;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/net/IPVersion;->INET6:Lcom/android/internal/net/IPVersion;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/net/IPVersion;->$VALUES:[Lcom/android/internal/net/IPVersion;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/net/IPVersion;
    .locals 1
    .parameter "name"

    .prologue
    .line 32
    const-class v0, Lcom/android/internal/net/IPVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/IPVersion;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/net/IPVersion;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/android/internal/net/IPVersion;->$VALUES:[Lcom/android/internal/net/IPVersion;

    invoke-virtual {v0}, [Lcom/android/internal/net/IPVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/IPVersion;

    return-object v0
.end method
