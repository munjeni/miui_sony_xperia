.class public Landroid/preference/MiuiVolumePreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "MiuiVolumePreference.java"

# interfaces
.implements Landroid/preference/PreferenceManager$OnActivityStopListener;
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;,
        Landroid/preference/MiuiVolumePreference$SavedState;,
        Landroid/preference/MiuiVolumePreference$VolumeStore;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumePreference"


# instance fields
.field private mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    sget-object v1, Landroid/R$styleable;->VolumePreference:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 56
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroid/preference/MiuiVolumePreference;->mStreamType:I

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Landroid/preference/MiuiVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 128
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 129
    invoke-virtual {p0}, Landroid/preference/MiuiVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 130
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x60b0012

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 133
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 135
    :cond_0
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 137
    .end local v1           #view:Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->stop()V

    .line 138
    iput-object v4, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    .line 141
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method public onActivityStop()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 120
    :cond_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 68
    const v1, 0x60b0012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 69
    .local v0, seekBar:Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/MiuiVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/MiuiVolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/MiuiVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    .line 71
    invoke-virtual {p0}, Landroid/preference/MiuiVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/preference/PreferenceManager;->registerOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 75
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 76
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 78
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .parameter "positiveResult"

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 109
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->revertVolume()V

    .line 113
    :cond_0
    invoke-direct {p0}, Landroid/preference/MiuiVolumePreference;->cleanup()V

    .line 114
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 82
    iget-object v3, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-nez v3, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 83
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 84
    .local v0, isdown:Z
    :goto_1
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 101
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_2
    move v0, v2

    .line 83
    goto :goto_1

    .line 86
    .restart local v0       #isdown:Z
    :sswitch_0
    if-eqz v0, :cond_0

    .line 87
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 91
    :sswitch_1
    if-eqz v0, :cond_0

    .line 92
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2, v1}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->changeVolumeBy(I)V

    goto :goto_0

    .line 96
    :sswitch_2
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->muteVolume()V

    goto :goto_0

    .line 84
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_1
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 166
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/MiuiVolumePreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 177
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 172
    check-cast v0, Landroid/preference/MiuiVolumePreference$SavedState;

    .line 173
    .local v0, myState:Landroid/preference/MiuiVolumePreference$SavedState;
    invoke-virtual {v0}, Landroid/preference/MiuiVolumePreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 174
    iget-object v1, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eqz v1, :cond_1

    .line 175
    iget-object v1, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/MiuiVolumePreference$SavedState;->getVolumeStore()Landroid/preference/MiuiVolumePreference$VolumeStore;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->onRestoreInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    goto :goto_0
.end method

.method protected onSampleStarting(Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;)V
    .locals 1
    .parameter "volumizer"

    .prologue
    .line 144
    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eq p1, v0, :cond_0

    .line 145
    iget-object v0, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->stopSample()V

    .line 147
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 151
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 152
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Landroid/preference/MiuiVolumePreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    .end local v1           #superState:Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 157
    .restart local v1       #superState:Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Landroid/preference/MiuiVolumePreference$SavedState;

    invoke-direct {v0, v1}, Landroid/preference/MiuiVolumePreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 158
    .local v0, myState:Landroid/preference/MiuiVolumePreference$SavedState;
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Landroid/preference/MiuiVolumePreference;->mSeekBarVolumizer:Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/MiuiVolumePreference$SavedState;->getVolumeStore()Landroid/preference/MiuiVolumePreference$VolumeStore;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/MiuiVolumePreference$SeekBarVolumizer;->onSaveInstanceState(Landroid/preference/MiuiVolumePreference$VolumeStore;)V

    :cond_1
    move-object v1, v0

    .line 161
    goto :goto_0
.end method

.method public setStreamType(I)V
    .locals 0
    .parameter "streamType"

    .prologue
    .line 61
    iput p1, p0, Landroid/preference/MiuiVolumePreference;->mStreamType:I

    .line 62
    return-void
.end method
