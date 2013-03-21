.class Landroid/mtp/MtpDatabase$TrustedHostInfo;
.super Ljava/lang/Object;
.source "MtpDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrustedHostInfo"
.end annotation


# instance fields
.field public idList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public nameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/mtp/MtpDatabase;


# direct methods
.method private constructor <init>(Landroid/mtp/MtpDatabase;)V
    .locals 0
    .parameter

    .prologue
    .line 1826
    iput-object p1, p0, Landroid/mtp/MtpDatabase$TrustedHostInfo;->this$0:Landroid/mtp/MtpDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/mtp/MtpDatabase;Landroid/mtp/MtpDatabase$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1826
    invoke-direct {p0, p1}, Landroid/mtp/MtpDatabase$TrustedHostInfo;-><init>(Landroid/mtp/MtpDatabase;)V

    return-void
.end method
