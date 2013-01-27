.class public Lmiui/provider/MicloudPushProvider$Watermark;
.super Ljava/lang/Object;
.source "MicloudPushProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/provider/MicloudPushProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Watermark"
.end annotation


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .parameter "name"
    .parameter "value"
    .parameter "type"

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lmiui/provider/MicloudPushProvider$Watermark;->mName:Ljava/lang/String;

    .line 111
    iput-wide p2, p0, Lmiui/provider/MicloudPushProvider$Watermark;->mValue:J

    .line 112
    iput-object p4, p0, Lmiui/provider/MicloudPushProvider$Watermark;->mType:Ljava/lang/String;

    .line 113
    return-void
.end method
