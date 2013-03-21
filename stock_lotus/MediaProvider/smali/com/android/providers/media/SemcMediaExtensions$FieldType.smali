.class final enum Lcom/android/providers/media/SemcMediaExtensions$FieldType;
.super Ljava/lang/Enum;
.source "SemcMediaExtensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/SemcMediaExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FieldType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/providers/media/SemcMediaExtensions$FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/providers/media/SemcMediaExtensions$FieldType;

.field public static final enum DOUBLE:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

.field public static final enum INTEGER:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

.field public static final enum TEXT:Lcom/android/providers/media/SemcMediaExtensions$FieldType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/SemcMediaExtensions$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->INTEGER:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    .line 104
    new-instance v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/android/providers/media/SemcMediaExtensions$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->TEXT:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    .line 105
    new-instance v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    const-string v1, "DOUBLE"

    invoke-direct {v0, v1, v4}, Lcom/android/providers/media/SemcMediaExtensions$FieldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->DOUBLE:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    .line 102
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    sget-object v1, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->INTEGER:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->TEXT:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->DOUBLE:Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->$VALUES:[Lcom/android/providers/media/SemcMediaExtensions$FieldType;

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
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/providers/media/SemcMediaExtensions$FieldType;
    .locals 1
    .parameter

    .prologue
    .line 102
    const-class v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    return-object v0
.end method

.method public static values()[Lcom/android/providers/media/SemcMediaExtensions$FieldType;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/providers/media/SemcMediaExtensions$FieldType;->$VALUES:[Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    invoke-virtual {v0}, [Lcom/android/providers/media/SemcMediaExtensions$FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/providers/media/SemcMediaExtensions$FieldType;

    return-object v0
.end method
