.class public Lcom/android/internal/telephony/SmsHeader$MWIElt;
.super Ljava/lang/Object;
.source "SmsHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MWIElt"
.end annotation


# instance fields
.field public extMsgIndType:I

.field public isDiscard:Z

.field public msgCount:I

.field public msgIndType:I

.field public profId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
