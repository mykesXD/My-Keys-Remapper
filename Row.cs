﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using InputSimulatorStandard.Native;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Interop;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using ImageProcessor;

namespace KeyRemap
{
    public class Row
    {
        public string keyMap1;
        public string keyMap2;
        public Brush icon;
        public Row(string keymap1, string keymap2, Brush icon)
        {
            this.keyMap1 = keymap1;
            this.keyMap2 = keymap2;
            this.icon = icon;
        }
        public void rowBody_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            Rectangle rowBody = Util.FindVisualParent<Rectangle>(sender as Rectangle);
            MainPage.mainPageInstance.selectedRowIndex = (int)rowBody.GetValue(Grid.RowProperty);
            bool allRemoved = true;
            for (int i = 0; i < MainPage.mainPageInstance.rows; i++)
            {
                var pain = Util.ChildrenInRow(MainPage.mainPageInstance.BodyContainer, i);
                Rectangle painer = (Rectangle)pain.ToList()[0];
                Rectangle painer2 = (Rectangle)pain.ToList()[2];
                if (i == MainPage.mainPageInstance.selectedRowIndex && painer2.StrokeThickness == 1)
                {
                    painer2.StrokeThickness = 0;
                    painer2.Fill = (SolidColorBrush)new BrushConverter().ConvertFrom("#3A90CE");
                    painer.Fill = (SolidColorBrush)new BrushConverter().ConvertFrom("#3A90CE");
                    allRemoved = false;
                }
                else
                {
                    //MainPage.mainPageInstance.selectedRowIndex -= 1;
                    painer2.StrokeThickness = 1;
                    painer2.Fill = (SolidColorBrush)new BrushConverter().ConvertFrom("#FF292C31");
                    painer.Fill = Brushes.Transparent;
                }
            }
            if (allRemoved)
            {
                MainPage.mainPageInstance.selectedRowIndex = -1;
            }
        }
        public void rowBody_MouseEnter(object sender, MouseEventArgs e)
        {
            Rectangle rowBody = Util.FindVisualParent<Rectangle>(sender as Rectangle);
            if (rowBody.StrokeThickness == 2)
            {
                rowBody.StrokeThickness = 2;
            }
            else
            {
                rowBody.StrokeThickness = 0.5;
            }
        }
        public void rowBody_MouseLeave(object sender, MouseEventArgs e)
        {
            Rectangle rowBody = Util.FindVisualParent<Rectangle>(sender as Rectangle);
            if (rowBody.StrokeThickness == 2)
            {
                rowBody.StrokeThickness = 2;
            }
            else
            {
                rowBody.StrokeThickness = 0;
            }
        }
        public void Create()
        {
            MainPage.mainPageInstance.realHotkeyList.Add(keyMap1);
            Console.WriteLine("NEW REGISTER");
            Rectangle rowBackground = new Rectangle
            {
                Name = string.Format("RemapBackground{0}", MainPage.mainPageInstance.rows),
                Width = 588,
                Height = 56,
                Fill = Brushes.Transparent,
                StrokeThickness = 0,
                Stroke = (SolidColorBrush)new BrushConverter().ConvertFrom("#0094FF"),
                RadiusX = 10,
                RadiusY = 10,
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
                Margin = new Thickness(0, 2, 2, 2),
            };

            rowBackground.MouseLeftButtonDown += rowBody_MouseLeftButtonDown;
            rowBackground.MouseEnter += rowBody_MouseEnter;
            rowBackground.MouseLeave += rowBody_MouseLeave;

            Grid.SetRow(rowBackground, MainPage.mainPageInstance.rows);
            Grid.SetColumn(rowBackground, 0);
            Grid.SetColumnSpan(rowBackground, 4);
            Rectangle rowBody = new Rectangle
            {
                Name = string.Format("RemapRow{0}", MainPage.mainPageInstance.rows),
                Width = 520,
                Height = 44,
                Fill = (SolidColorBrush)new BrushConverter().ConvertFrom("#FF292C31"),
                StrokeThickness = 1,
                Stroke = (SolidColorBrush)new BrushConverter().ConvertFrom("#FF34373B"),
                RadiusX = 10,
                RadiusY = 10,
                Margin = new Thickness(2, 8, 2, 8),
                IsHitTestVisible = false,
            };
            Grid.SetRow(rowBody, MainPage.mainPageInstance.rows);
            Grid.SetColumn(rowBody, 1);
            Grid.SetColumnSpan(rowBody, 3);
            Rectangle keyIcon = new Rectangle
            {
                Name = "keyIcon",
                Width = 30,
                Height = 30,
                Fill = icon,
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
                IsHitTestVisible = false,
            };
            Grid.SetRow(keyIcon, MainPage.mainPageInstance.rows);
            Grid.SetColumn(keyIcon, 0);
            Label keyLabel = new Label
            {
                Name = "keyLabel",
                Content = keyMap1,
                FontSize = 20,
                Foreground = new SolidColorBrush(Colors.White),
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
                IsHitTestVisible = false,
            };
            Grid.SetRow(keyLabel, MainPage.mainPageInstance.rows);
            Grid.SetColumn(keyLabel, 1);
            Brush arrowImage;
            byte[] photoBytes = File.ReadAllBytes(@"image/Chevron_Right.png");
            using (MemoryStream inStream = new MemoryStream(photoBytes))
            {
                using (MemoryStream outStream = new MemoryStream())
                {
                    // Initialize the ImageFactory using the overload to preserve EXIF metadata.
                    using (ImageFactory imageFactory = new ImageFactory(preserveExifData: true))
                    {
                        // Load, resize, set the format and quality and save an image.
                        imageFactory.Load(inStream)
                                    .Save(outStream);
                    }
                    arrowImage = new ImageBrush(Util.BitmapToBitmapSource(new System.Drawing.Bitmap(outStream)));
                }
            }
            Rectangle arrow = new Rectangle
            {
                Name = string.Format("Arrow{0}", MainPage.mainPageInstance.rows),
                Width = 28,
                Height = 30,
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
                Fill = arrowImage,
            };
            Grid.SetRow(arrow, MainPage.mainPageInstance.rows);
            Grid.SetColumn(arrow, 2);

            Label keyLabel2 = new Label
            {
                Name = "keyLabel2",
                Content = keyMap2,
                FontSize = 20,
                Foreground = new SolidColorBrush(Colors.White),
                HorizontalAlignment = HorizontalAlignment.Center,
                VerticalAlignment = VerticalAlignment.Center,
                IsHitTestVisible = false,
            };
            Grid.SetRow(keyLabel2, MainPage.mainPageInstance.rows);
            Grid.SetColumn(keyLabel2, 3);

            RowDefinition gridRow = new RowDefinition();
            gridRow.Height = new GridLength(60);
            MainPage.mainPageInstance.BodyContainer.RowDefinitions.Add(gridRow);
            MainPage.mainPageInstance.rowList.Add(gridRow);
            MainPage.mainPageInstance.BodyContainer.Children.Add(rowBackground);
            MainPage.mainPageInstance.BodyContainer.Children.Add(keyIcon);
            MainPage.mainPageInstance.BodyContainer.Children.Add(rowBody);
            MainPage.mainPageInstance.BodyContainer.Children.Add(keyLabel);
            MainPage.mainPageInstance.BodyContainer.Children.Add(arrow);
            MainPage.mainPageInstance.BodyContainer.Children.Add(keyLabel2);
            if(MainPage.mainPageInstance.rows >= 1)
            {
                MainPage.mainPageInstance.ScrollView.Height += 60;
                MainPage.mainPageInstance.ScrollContainer.Height += 60;
                //MainPage.mainPageInstance.BodyBackground.Height += 60;
                MainPage.mainPageInstance.BodyContainer.Height += 60;
            }
            MainPage.mainPageInstance.rows += 1;
        }
    }
}
