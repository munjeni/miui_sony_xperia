.class Landroid/webkit/PostData$DataStream;
.super Ljava/io/ByteArrayInputStream;
.source "PostData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/PostData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DataStream"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/PostData;


# direct methods
.method public constructor <init>(Landroid/webkit/PostData;[B)V
    .locals 0
    .parameter
    .parameter "buf"

    .prologue
    iput-object p1, p0, Landroid/webkit/PostData$DataStream;->this$0:Landroid/webkit/PostData;

    invoke-direct {p0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/PostData$DataStream;->buf:[B

    return-object v0
.end method
