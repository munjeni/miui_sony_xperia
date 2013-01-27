.class public Landroid/net/wifi/WifiConfiguration$Mode;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mode"
.end annotation


# static fields
.field public static final ADHOC:I = 0x1

.field public static final INFRASTRUCTURE:I = 0x0

.field public static final strings:[Ljava/lang/String; = null

.field public static final varName:Ljava/lang/String; = "mode"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "infrastructure"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ad-hoc"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Mode;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
